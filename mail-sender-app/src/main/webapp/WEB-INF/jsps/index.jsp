<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isErrorPage="false" %>	
<!DOCTYPE html>
<html>
<head>
<style>
.bold {
	font-weight: bold;
}

.center {
	text-align: center;
}
</style>
<meta charset="ISO-8859-1">
<title>Email Sender</title>
</head>
<body>

	<h1>Mail Sender</h1>
	<hr />
	<h2 style="color:green">${msg}</h2>
	<form action="send" method="POST">
		<table class="center">
		    <tr>
				<td><label for="from" class="bold">From</label></td>
				<td><input type="text" name="from" required id="from"></td>
			</tr>
			<tr>
				<td><label for="to" class="bold">To</label></td>
				<td><input type="text" name="to" required id="to"></td>
			</tr>
			<tr>
				<td><label for="subject" class="bold">Subject</label></td>
				<td><input type="text" name="subject" required id="subject"></td>

			</tr>
			<tr>
				<td><label for="body" class="bold">Body</label></td>
				<td><textarea id="body" name="body" cols="21" rows="6" required
						style="resize: none"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="send"></td>
			</tr>
		</table>
	</form>

</body>
</html>