<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 18.11.2020
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="styles/style.css"/>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <title>Registration</title>
</head>
<body>
<div class="signup-form">
    <form action="/user/register" method="POST">
        <h2>Register</h2>
        <p class="hint-text">Create your account.</p>
        <div class="form-group">
            <div class="row">
                <div class="col"><input type="text" name="first_name" class="form-control" placeholder="First Name" required></div>
                <div class="col"><input type="text" name="last_name" class="form-control" placeholder="Last Name" required></div>
            </div>
        </div>
        <div class="form-group"><input type="email" name="email" class="form-control" placeholder="Email" required></div>
        <div class="form-group"><input type="password" name="password" class="form-control" placeholder="Password" required></div>
        <div class="form-group"><input type="password" name="confirm_password" class="form-control" placeholder="Confirm Password" required></div>
        <div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Register now</button>
        </div>

    </form>
    <div class="text-center">Already have an account? <a href="#">Sign in</a></div>
</div>
</body>
</html>
