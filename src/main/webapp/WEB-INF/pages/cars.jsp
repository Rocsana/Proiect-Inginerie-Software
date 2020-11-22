<%-- 
    Document   : cars
    Created on : Nov 3, 2020, 8:26:56 AM
    Author     : rocsy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>  
    <form method="POST" action="${pageContext.request.contextPath}/Cars">
        <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/AddCar" role="button">Add Car</a>
        <button class="btn btn-danger" type="submit">Delete Cars</button>
     <c:forEach var="car" items="${cars}" varStatus="status">
        <div class="row">
            <div class="col-md">
                <input type="checkbox" name="car_ids" value="${car.id}"/>
            </div>
            <div class="cold-md-3">
                ${car.licensePlate}
            </div>
            <div class="cold-md-3">
                ${car.parkingSpot}
            </div>
            <div class="cold-md-3">
                ${car.username}
            </div>
            <div class="col-md-3">
                <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}" role="button">Edit Car</a>
            </div>
            
        </div>
    </c:forEach>
    
<!--    <div class="row">
        <div class="col-md-3">
            Car 1
        </div>
        <div class="col-md-3">
            Spot 1
        </div>
        <div class="col-md-3">
            User 1
        </div>
       <div>
                <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}" role="button">Edit Car</a>
            </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            Car 2
        </div>
        <div class="col-md-3">
            Spot 2
        </div>
        <div class="col-md-3">
            User 2
        </div>
       <div>
                <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}" role="button">Edit Car</a>
            </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            Car 3
        </div>
        <div class="col-md-3">
            Spot 3
        </div>
        <div class="col-md-3">
            User 3
        </div>
        <div>
                <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}" role="button">Edit Car</a>
            </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            Car 4
        </div>
        <div class="col-md-3">
            Spot 4
        </div>
        <div class="col-md-3">
            User 4
        </div>
       <div>
                <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}" role="button">Edit Car</a>
            </div>
    </div>-->
    
    <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
    </form>
   
</t:pageTemplate>
