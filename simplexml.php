<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<?php

	$xml=simplexml_load_file('bookstore/bookstore.xml') or die("Error: Cannot create object");
	print_r($xml);
	?>
</body>
</html>