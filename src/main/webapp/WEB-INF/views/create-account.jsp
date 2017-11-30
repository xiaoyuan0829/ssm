<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<title>Create Account</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/resources/css/templatemo_style.css"
	rel="stylesheet" type="text/css">
</head>
<body class="templatemo-bg-gray">
	<h1 class="margin-bottom-15">Create Account</h1>
	<div class="container">
		<div class="col-md-12">
			<form
				class="form-horizontal templatemo-create-account templatemo-container"
				role="form" action="./register" method="post"
				onsubmit="return check(this)">
				<div class="form-inner">
					<div class="form-group">
						<div class="col-md-6">
							<label for="first_name" class="control-label">First Name</label>
							<input type="text" class="form-control" id="first_name"
								name="first_name">
						</div>
						<div class="col-md-6">
							<label for="last_name" class="control-label">Last Name</label> <input
								type="text" class="form-control" id="last_name" name="last_name">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-12">
							<label for="username" class="control-label">Email</label> <input
								type="email" class="form-control" id="email" name="email">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-6">
							<label for="username" class="control-label">Username</label> <input
								type="text" class="form-control" id="username" name="username">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-6">
							<label for="password" class="control-label">Password</label> <input
								type="password" class="form-control" id="password"
								name="password">
						</div>
						<div class="col-md-6">
							<label for="password" class="control-label">Confirm
								Password</label> <input type="password" class="form-control"
								id="password_confirm" name="password_confirm">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-12">
							<input type="submit" value="Create account" class="btn btn-info">
							<a href="./login" class="pull-right">Login</a>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="modal fade" id="templatemo_modal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button onclick="redirect()" type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">验证</h4>
				</div>
				<div class="modal-body">
					<p id="message">
						
					</p>
				</div>
				<div class="modal-footer">
					<button onclick="redirect()" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function(){
			if("${msg}"){
				$("#message").text("${msg}");
				$("#templatemo_modal").modal({show:true});
			}
		});
		function redirect(){
			if("${msg}"=="注册成功"){
				window.location.href="./login";
			}
		}
		function check(form) {
			if (form.first_name.value == "") {
				alert("First Name cannot be null.")
				return false;
			} else if (form.last_name.value == "") {
				alert("Last Name cannot be null.")
				return false;
			} else if (form.email.value == "") {
				alert("Email cannot be null.")
				return false;
			} else if (form.username.value == "") {
				alert("Username cannot be null.")
				return false;
			} else if (form.password.value == "") {
				alert("Password cannot be null.")
				return false;
			} else if (form.password_confirm.value == "") {
				alert("Confirm Password cannot be null.")
				return false;
			} else if (form.password.value != form.password_confirm.value) {
				alert("Passwords are not consistent.")
				return false;
			} else {
				return true;
			}
		}
	</script>
</body>
</html>