<%-- 
    Document   : agecalculator
    Created on : 23-Sep-2022, 2:15:49 PM
    Author     : Patrick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>age calculator</title>
    </head>
    <body>
        <h1>Age Calculator</h1>
        <form method = "post" action = "age">
            Enter your age: <input type="text" name="age"><br>
            <input type = "submit" value = "Age next birthday"><br>
        </form>
        <p>${message}</p>
        <a href="/Week3Lab_Calculators/arithmetic">Arithmetic Calculator</a>
    </body>
</html>
