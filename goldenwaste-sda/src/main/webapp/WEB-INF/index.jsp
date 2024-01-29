


﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<style>
body{
padding:5% 10%;
}
.form-group{
	
	width: 20%;
 display: flex;
    justify-content: space-between;
}
</style>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<title>Sign Up</title>
</head>
<body>
    <form:form action="/register" method="post" modelAttribute="newUser">
    <h2>Register</h2>
        <div class="form-group">
            <label>Name</label>
            <form:input path="userName"  />
            <form:errors path="userName" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Email:</label>
            <form:input path="email"  />
            <form:errors path="email" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Password:</label>
            <form:password path="password"  />
            <form:errors path="password" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Confirm PW:</label>
            <form:password path="confirm" />
            <form:errors path="confirm" class="text-danger" />
        </div>
        <input type="submit" value="Submit" class="btn btn-success" />
    </form:form>
    
    <form:form action="/login" method="post" modelAttribute="newLogin">
    <h2>Log in</h2>
        <div class="form-group">
            <label>Email:</label>
            <form:input path="email"  />
            <form:errors path="email" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Password:</label>
            <form:password path="password" />
            <form:errors path="password" class="text-danger" />
        </div>
        <input type="submit" value="Submit" class="btn btn-success" />
    </form:form>
    
</body>
</html>