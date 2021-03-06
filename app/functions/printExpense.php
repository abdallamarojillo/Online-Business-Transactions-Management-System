<?php

require_once("../../incs/authenticator.php");

require_once("../../assets/libs/tcpdf/tcpdf.php");
 function fetch_data()  
 {
    require_once("../../incs/conn.php");
      $output = '';
      $sql = "SELECT * FROM expenses ORDER BY expenseId DESC";  
      $result = mysqli_query($dbc, $sql);
      $number = 0;
      while($row = mysqli_fetch_array($result))  
      {       
      $output .= '<tr>  <td>'.++$number.'</td> 
                          <td>'.$row["expenseName"].'</td>  
                          <td>'.$row["expenseAmount"].'</td> 
                          <td>'.$row["dateProcessed"].'</td>
                     </tr>
                          ';  
      }  
      return $output;  
 }

$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT,PDF_PAGE_FORMAT, true, 'UTF-8', false);
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
$pdf->SetAutoPageBreak(TRUE,PDF_MARGIN_BOTTOM);


if(@file_exists(dirname(_FILE_).'/lang/eng.php')){
    require_once(dirname(_FILE_).'/lang/eng.php');
    $pdf->setLanguageArray($l);
}

$pdf->SetFont('helvetica', '',9);
$pdf->AddPage();
$printedOn = date("H:i:s F d Y ");
$code = password_hash($printedOn, PASSWORD_DEFAULT, ['cost' => 12]);
$content = '';  
      $content .= '
      <i>'.$code.'</i>
      <h4 align="center">EXPENSE RECORDS</h4><br />
      <p>Printed On '.$printedOn.' </p>
      <table border="1" cellspacing="0" cellpadding="3">  
           <tr>
                <th><b>NUMBER</b></th>
                <th><b>EXPENSE NAME</b></th>  
                <th><b>EXPENSE AMOUNT</b></th>   
                <th><b>DATE ADDED</b></th>
                
           </tr>  
      ';  
      $content .= fetch_data();  
      $content .= '</table>';  
$pdf->writeHTML($content, true, 0, true, 0);
$pdf->lastPage();
$pdf->Output('expenses.pdf', 'I');

?>