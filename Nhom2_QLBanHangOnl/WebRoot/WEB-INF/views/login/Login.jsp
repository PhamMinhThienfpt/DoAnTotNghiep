<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Java5</title>
<style type="text/css">
*[id$=errors] {
	color: red;
	font-style: italic;
}
</style>
</head>
<body>
	<div
		style="width: 500px; height: 500px; padding-left: 100px; padding-right: 100px; border: 2px red;">
		<div
			style="border: 2px; background-color: white; width: 500px; height: 400px">
			<h1 align="center" style="margin-block-start: 0px;">Account
				Login</h1>

			<form:form action="login/Login.do">
				<div style="width: 500px; height: 100px; margin-left: 100px;">
					<div style="float: none;">Username:tritran</div>
					<div style="float: left;">
						<form:input path="maNhanVien"  cssStyle="width: 300px; height: 60px;" />
					</div>
				</div>
				<form:errors />
				<br>
				<div
					style="width: 500px; height: 60px; margin-bottom: 50px; margin-left: 100px;">
					<div style="float: none;">Password:tri1999</div>
					<div style="float: left;">
						<form:password path="matKhau"  cssStyle="width: 300px; height: 60px;" />
					</div>
				</div>


				<form:errors />
				<div style="margin-left: 50px;">
					<button style="width: 400px; height: 50px; background-color: blue;">
						<p align="center"
							style="color: white; height: 35px; font-size: 17;">
							<b>SIGN IN</b>
						</p>
					</button>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>