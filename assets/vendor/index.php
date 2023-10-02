<?php

require_once './autoload.php';

use Dompdf\Dompdf as Dompdf;

$dompdf = new Dompdf();
$dompdf->loadHtml('hello world');

$dompdf->setPaper('A4', 'portrait');

$dompdf->render();

$dompdf->stream("dompdf_out.pdf", array("Attachment" => false));


?>