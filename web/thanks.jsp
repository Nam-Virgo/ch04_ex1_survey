<%-- 
    Document   : thanks
    Created on : Aug 28, 2025, 2:57:24 PM
    Author     : ADMIN
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Survey Submitted</title>
</head>
<body>
    <h1>Thank you for your submission!</h1>

    <h2>Your Details</h2>
    <p>First Name: ${firstName}</p>
    <p>Last Name: ${lastName}</p>
    <p>Email: ${email}</p>
    <p>Date of Birth: ${birthDay}</p>

    <h2>Survey Information</h2>
    <p>Heard From: ${heardFrom}</p>
    <p>Wants Updates: ${wantsUpdates}</p>
    <p>Email OK: ${emailOK}</p>
    <p>Preferred Contact: ${contactVia}</p>

    <form action="index.html">
        <input type="submit" value="Back to Survey">
    </form>
</body>
</html>
