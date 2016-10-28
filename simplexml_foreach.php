<!DOCTYPE html>
<html>
<body>

<?php
$xml=simplexml_load_file("bookstore/bookstore.xml") or die("Error: Cannot create object");
?>

<?php foreach($xml->children() as $books): ?>
<?php if ($books->year == 2003): ?>
	<p><?= $books->title ?>, <?= $books->author ?>, <?= $books->year ?>, <?= $books->price ?></p>
<?php endif; ?>
<?php endforeach; ?>

<table border="1">
	<tr bgcolor="#9acd32">
		<th>Título</th>
		<th>Autor</th>
		<th>Año</th>
		<th>Precio</th>
	</tr>
	
<?php foreach($xml->children() as $books): ?>
<?php if ($books->year == 2003): ?>
	<tr>
		<td><?= $books->title ?></td>
		<td><?= $books->author ?></td>
		<td><?= $books->year ?></td>
		<td><?= $books->price ?></td>
	</tr>
<?php endif; ?>
<?php endforeach; ?>
</table>

</body>
</html>