<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Add Person's Details</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>

<body>

	<div class="container">

		<form:form method="POST" modelAttribute="peopleForm"
			class="form-signin">
			<h2 class="form-signin-heading">Create your account</h2>
			<spring:bind path="firstname">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="text" path="firstname" class="form-control"
						placeholder="First Name" autofocus="true"></form:input>
					<form:errors path="firstname"></form:errors>
				</div>
			</spring:bind>

			<spring:bind path="lastname">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="text" path="lastname" class="form-control"
						placeholder="Last Name" autofocus="true"></form:input>
					<form:errors path="lastname"></form:errors>
				</div>
			</spring:bind>

			<spring:bind path="dob">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="date" path="dob" class="form-control"
						placeholder="DOB" autofocus="true"></form:input>
					<form:errors path="dob"></form:errors>
				</div>
			</spring:bind>

			<spring:bind path="gender">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					Gender: Male
					<form:radiobutton path="gender" value="Male" />
					Female
					<form:radiobutton path="gender" value="Female" />
					<form:errors path="gender"></form:errors>
				</div>
			</spring:bind>

			<!-- Mobile Validation to be done-->
			<spring:bind path="mobilenumber">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="number" path="mobilenumber" class="form-control"
						placeholder="Mobile No"></form:input>
					<form:errors path="mobilenumber"></form:errors>
				</div>
			</spring:bind>

			<spring:bind path="email">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="email" path="email" class="form-control"
						placeholder="Email"></form:input>
					<form:errors path="email"></form:errors>
				</div>
			</spring:bind>

			<spring:bind path="address">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="text" path="address" class="form-control"
						placeholder="Address"></form:input>
					<form:errors path="address"></form:errors>
				</div>
			</spring:bind>

			<!-- Pin Code Validation to be done-->
			<spring:bind path="pincode">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="number" path="pincode" class="form-control"
						placeholder="Pin Code"></form:input>
					<form:errors path="pincode"></form:errors>
				</div>
			</spring:bind>

			<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
		</form:form>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
