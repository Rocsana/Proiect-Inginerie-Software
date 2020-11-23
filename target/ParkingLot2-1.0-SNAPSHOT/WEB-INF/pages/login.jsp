<%-- 
    Document   : login
    Created on : Nov 23, 2020, 8:15:25 AM
    Author     : rocsy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:pageTemplate pageTitle="Login">
    <form class="needs-validation" novalidate method="POST" action="j_secutity_check">
        <h1 class="h3 mb-3 font-weight-normal"> Sign in </h1>
        <label for="username" class="sr-only">Username</label>
        <input type="text" id="username" name="j_username" class="form-control" placeholder="Username" required autofocus />
        <label for="password" class="sr-only">Password</label>
        <input type="password" id="password" name="j_password" class="form-control" placeholder="Password" required/>
    <button class="btn btn-primary btn-lg btn-block" type="submit">Sign in</button></form>
         
        <script src="form-validation.js"></script>
</t:pageTemplate>
