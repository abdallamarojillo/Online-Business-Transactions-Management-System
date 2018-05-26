<?php
session_start();
require_once("../../incs/conn.php");
require_once '../../assets/classes/detect/Mobile_Detect.php';


if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['username']))
{
    $detect = new Mobile_Detect;
    $deviceType = ($detect->isMobile() ? ($detect->isTablet() ? 'tablet' : 'phone') : 'computer');
    $scriptVersion = $detect->getScriptVersion();
    $dd = $deviceType;
    $ua = htmlentities($_SERVER['HTTP_USER_AGENT']);
    $ip = isset($_SERVER['HTTP_CLIENT_IP'])?$_SERVER['HTTP_CLIENT_IP']:isset($_SERVER['HTTP_X_FORWARDE‌​D_FOR'])?$_SERVER['HTTP_X_FORWARDED_FOR']:$_SERVER['REMOTE_ADDR'];
               
    $host = gethostname();

    $username = mysqli_real_escape_string($dbc,strip_tags($_POST['username']));
    $password = mysqli_real_escape_string($dbc,strip_tags($_POST['password']));
    $failedPass = mysqli_real_escape_string($dbc,strip_tags($_POST['password']));
    
    $s = "SELECT * FROM failed_logins WHERE status='blocked' && ip='".$ip."'";
     if($ss = mysqli_query($dbc,$s))
          {
            if(mysqli_num_rows($ss) !=0)
                {
                     ?>
                       <script>
                        $("#inputGroup1").hide();
                        $("#inputGroup2").hide();
                        $("#loginDiv").hide(); 
                        </script>
                        <?php
                    exit("<b>You have been blocked</b>");
                  
                }
            }

            $sql = mysqli_query($dbc,"SELECT * FROM users WHERE username='".$username."' ");
            $rowp = mysqli_fetch_assoc($sql);
            $dbpass1 = $rowp['password'];
            $dbpass2  = $rowp['newPassword'];
            if($dbpass2 =='')
            {
            
            if(password_verify($password,$dbpass1))
            {
                
                date_default_timezone_set('Africa/Nairobi');
                $_SESSION['username'] = $rowp['username'];
                $_SESSION['userlevel'] = $rowp['userlevel'];
                $_SESSION['email'] = $rowp['email'];
                $otp = rand(100000,999999);
                $_SESSION['otp'] = $otp;
                $_SESSION['timeOTPsent'] = date('Y-m-d h:i s a');
                $insert1 = mysqli_query($dbc,"INSERT INTO signinlogs(username,OTP,timeOTPsent,ip) VALUES
                                        ('".$_SESSION['username']."','".$_SESSION['otp']."','".$_SESSION['timeOTPsent']."','".$ip."')");
                
                //send otp to email
                $to      = $_SESSION['email'];
                $subject = 'One Time Pin';
                $message = $_SESSION['otp'];
                $headers = 'From: webmaster@btms.com' . "\r\n" .
                    'Reply-To: webmaster@btms.com' . "\r\n" .
                    'X-Mailer: PHP/';

                mail($to, $subject, $message, $headers);
                
         
                exit("success");
            } //if password incorrect, display error, insert into failed logins
            
            else
            {
                $invalid = "<h6>Invalid Credentials
                                    <br/>
                                    <i class='material-icons'>report_problem</i>
                                </h6>";
                echo $invalid;
                
            
               $si = "INSERT INTO failed_logins (ip,device,deviceName,userAgent,failedString,failedPass,dateProccessed)
                       VALUES
                     ('$ip','$dd','$host','$ua','$username','$failedPass', NOW())";
               $siq = mysqli_query($dbc,$si);
               

                        $sip = "SELECT count(ip) AS failed_login_attempt
                                FROM failed_logins
                                WHERE ip = '$ip'
                                AND dateProccessed
                                BETWEEN DATE_SUB( NOW() , INTERVAL 1 DAY )
                                AND NOW()";
                        $result = mysqli_query($dbc,$sip);
                        $row  = mysqli_fetch_assoc($result);
                        $failed_login_attempt = $row['failed_login_attempt'];
                        if($failed_login_attempt == 3){
                         ?>
                        <script>
                        $(function(){
                           var time = 10; //60 seconds = 1 minute
                           
                           function redirect(){
                            var id = setTimeout(redirect, 1000);
                            $('#feedback').html('');
                            $(".timer").html("<b class='text-center alert-warning'>Too many login attempts. Please try again in "+time+" seconds</b>");
                            $("#loginEmail").prop("disabled",true);
                            $("#loginPassword").prop("disabled",true);
                            $("#loginDiv").hide();
                            if(time === 0){
                            clearTimeout(id);
                            $(".timer").html('');
                            $("#loginEmail").prop("disabled",false);
                            $("#loginPassword").prop("disabled",false);
                            $("#loginDiv").show();
                           }
                           time --;
                        }
                        redirect();
                        });
                        </script>
                        
                        <?php
                    }
                    elseif($failed_login_attempt > 3)
                    {
                        $block = mysqli_query($dbc,"UPDATE failed_logins SET status='blocked' WHERE ip='".$ip."' ");
                        if($block){
                            ?>
                            <script>
                               $("#inputGroup1").hide();
                               $("#inputGroup2").hide();
                               $("#loginDiv").hide(); 
                            </script>
                            <?php
                            exit("<b>You have been blocked</b>");
                        }
                    }
            }
        } //other pass
            if($dbpass2 !='')
            {
            
            if(password_verify($password,$dbpass2))
            {
                date_default_timezone_set('Africa/Nairobi');
                $_SESSION['username'] = $rowp['username'];
                $_SESSION['userlevel'] = $rowp['userlevel'];
                $_SESSION['email'] = $rowp['email'];
                $otp = rand(100000,999999);
                $_SESSION['otp'] = $otp;
                $_SESSION['timeOTPsent'] = date('Y-m-d h:i s a');          
                $insert2 = mysqli_query($dbc,"INSERT INTO signinlogs(username,OTP,timeOTPsent,ip) VALUES
                                ('".$_SESSION['username']."','".$_SESSION['otp']."','".$_SESSION['timeOTPsent']."','".$ip."')");
                
                $to      = $_SESSION['email'];
                $subject = 'One Time Pin';
                $message = $_SESSION['otp'];
                $headers = 'From: webmaster@btms.com' . "\r\n" .
                'Reply-To: webmaster@btms.com' . "\r\n" .
                    'X-Mailer: PHP/';

                mail($to, $subject, $message, $headers);
        
                exit("success");
            } //if password incorrect, display error, insert into failed logins
            else
            if(password_verify($password,$dbpass1))
            {
                ?>
                <script>$(".modified").timeago();</script>
                <?php
                $original = $rowp['dateRegistered'];
                $original1=strtotime($original);
                $new = $rowp['dateModified'];
                $mod =  date(''.$new.'', $original1);
                $m = '<span><b>Your password was changed <time class="modified" datetime="'.$mod.'"></time></b></span>';
                echo $m;
                


            }
            else
            if(password_verify($password,$dbpass2))
            {
                ?>
                <script>
                    $(".modified").timeago();
                </script>
                <?php
                $original = $rowp['dateRegistered'];
                $original1=strtotime($original);
                $new = $rowp['dateModified'];
                $mod =  date(''.$new.'', $original1);
                $m = '<span"><b>Your password was changed <time class="modified" datetime="'.$mod.'"></time></b></span>';
                echo $m;
                


            }
            
            else
            {
                $invalid = "<h6 class='red-text center'>Invalid Credentials
                                    <br/>
                                    <i class='material-icons'>report_problem</i>
                                </h6>";
                echo $invalid;
                
            
               $si = "INSERT INTO failed_logins (ip,device,deviceName,userAgent,failedString,failedPass,dateProccessed)
                       VALUES
                     ('$ip','$dd','$host','$ua','$username','$failedPass', NOW())";
               $siq = mysqli_query($dbc,$si);

                        $sip = "SELECT count(ip) AS failed_login_attempt
                                FROM failed_logins
                                WHERE ip = '$ip'
                                AND dateProccessed
                                BETWEEN DATE_SUB( NOW() , INTERVAL 1 DAY )
                                AND NOW()";
                        $result = mysqli_query($dbc,$sip);
                        $row  = mysqli_fetch_assoc($result);
                        $failed_login_attempt = $row['failed_login_attempt'];
                        if($failed_login_attempt == 3){
                         ?>
                        <script>
                        $(function(){
                           var time = 10; //60 seconds = 1 minute
                           
                           function redirect(){
                            var id = setTimeout(redirect, 1000);
                            $('#feedback').html('');
                            $(".timer").html("<b class='red-text center'>Too many failed login attempts. Please try again in "+time+" seconds</b>");
                            $("#username").prop("disabled",true);
                            $("#password").prop("disabled",true);
                            $("#submit").prop("disabled",true);
                            if(time === 0){
                            clearTimeout(id);
                            $(".timer").html('');
                            $("#username").prop("disabled",false);
                            $("#password").prop("disabled",false);
                            $("#submit").prop("disabled",false);
                           }
                           time --;
                        }
                        redirect();
                        });
                        </script>
                        
                        <?php
                    }
                     elseif($failed_login_attempt > 3)
                    {
                        $block = mysqli_query($dbc,"UPDATE failed_logins SET status='blocked' WHERE ip='".$ip."' ");
                        if($block){
                            ?>
                            <script>
                               $("#inputGroup1").hide();
                               $("#inputGroup2").hide();
                               $("#loginDiv").hide(); 
                            </script>
                            <?php
                            exit("<b>You have been blocked</b>");
                        }
                    }
            }
        } //other pass
           

 
}

if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['otp']))
{

    $otpcode = mysqli_real_escape_string($dbc,strip_tags($_POST['otp']));
    
    $selectcode = mysqli_query($dbc, "SELECT * FROM signinlogs WHERE OTP='".$otpcode."'
                               AND
                               username='".$_SESSION['username']."'
                               AND
                               timeOTPsent='".$_SESSION['timeOTPsent']."'
                               ");
    if(mysqli_num_rows($selectcode) == 1)
    {
        $rowo = mysqli_fetch_assoc($selectcode);
        $_SESSION['otp'] = $rowo['OTP'];
        $_SESSION['TimeLoggedIn'] = date('Y-m-d h:i s a');
        mysqli_query($dbc,  "UPDATE signinlogs SET timeloggedin='".$_SESSION['TimeLoggedIn']."'
                     WHERE
                     username='".$_SESSION['username']."'
                     AND
                     OTP='".$_SESSION['otp']."'");
        exit("successotp");
    }
    else
    {
        exit("<b>Invalid OTP</b>");
    }
    
    

 
}

else
{
    //echo "Form not posted";
}

?>