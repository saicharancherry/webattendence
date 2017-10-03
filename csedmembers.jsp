<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<style>
thead {
	color: green;
}

tbody {
	color: blue;
}

tfoot {
	color: red;
}

table,th,td {
	border: 1px solid black;
	width: 1200px;
}
</style>

</head>
<body>
	<table>
		<thead>
			<tr>
				<th>student id</th>
				<th>attendance:<p id="date">
				</p></th>
			</tr>
		</thead>
		<script>
		document.getElementById('date').innerHTML=Date();
		</script>
		<tfoot>
			<tr>
				<td>15B81A05J1</td>
				<td><input type="checkbox" name="att" value="1"></td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<td>15B81A05J2</td>
				<td><input type="checkbox" name="att" value="2"></td>
			</tr>
			<tr>
				<td>15B81A05J3</td>
				<td><input type="checkbox" name="att" value="3"></td>
			</tr>
			<tr>
				<td>15B81A05J4</td>
				<td><input type="checkbox" name="att" value="4"></td>
			</tr>
			<tr>
				<td>15B81A05J5</td>
				<td><input type="checkbox" name="att" value="5"></td>
			</tr>
			<tr>
				<td>15B81A05J6</td>
				<td><input type="checkbox" name="att" value="6"></td>
			</tr>
			<tr>
				<td>15B81A05J7</td>
				<td><input type="checkbox" name="att" value="7"></td>
			</tr>
			<tr>
				<td>15B81A05J8</td>
				<td><input type="checkbox" name="att" value="8"></td>
			</tr>
			<tr>
				<td>15B81A05J9</td>
				<td><input type="checkbox" name="att" value="9"></td>
			</tr>
			<tr>
				<td>15B81A05K0</td>
				<td><input type="checkbox" name="att" value="10"></td>
			</tr>
			<tr>
				<td>15B81A05K1</td>
				<td><input type="checkbox" name="att" value="11"></td>
			</tr>
			<tr>
				<td>15B81A05K2</td>
				<td><input type="checkbox" name="att" value="12"></td>
			</tr>
			<tr>
				<td>15B81A05K3</td>
				<td><input type="checkbox" name="att" value="13"></td>
			</tr>
			<tr>
				<td>15B81A05K4</td>
				<td><input type="checkbox" name="att" value="14"></td>
			</tr>
			<tr>
				<td>15B81A05K5</td>
				<td><input type="checkbox" name="att" value="15"></td>
			</tr>
			<tr>
				<td>15B81A05K6</td>
				<td><input type="checkbox" name="att" value="16"></td>
			</tr>
			<tr>
				<td>15B81A05K7</td>
				<td><input type="checkbox" name="att" value="17"></td>
			</tr>
			<tr>
				<td>15B81A05K8</td>
				<td><input type="checkbox" name="att" value="18"></td>
			</tr>
			<tr>
				<td>15B81A05K9</td>
				<td><input type="checkbox" name="att" value="19"></td>
			</tr>
			<tr>
				<td>15B81A05L0</td>
				<td><input type="checkbox" name="att" value="20"></td>
			</tr>
			<tr>
				<td>15B81A05L1</td>
				<td><input type="checkbox" name="att" value="21"></td>
			</tr>
		</tbody>
	</table>
</body>
</html>
