<%-- 
    Document   : addCar
    Created on : Nov 21, 2020, 6:16:04 PM
    Author     : rocsy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<t:pageTemplate pageTitle="Add Car">
    <h1>Add Car</h1>
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddCar">
    <div class="row">
        <div class="col-md mb-3">
            <label for="license_plate">License Plate</label>
            <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder="" value="" required>
            <div class="invalid-feedback">
                Valid license plate is required.
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 mb-3">
            <label for="parking_spot">Parking Spot</label>
            <input type="text" class="form-control" id="parking_spot" name="parking_spot" placeholder="" value="" required>
            <div class="invalid-feedback">
                Valid parking spot is required.
            </div>
        </div>
    </div>
     <div class="row">
        <div class="col-md-6 mb-3">
            <label for="owner_id">Owner</label>
            <select class="custom-select d-block w-100" id="owner_id" name="owner_id" required>
                <c:forEach var="user" items="${users}" varStatus="status">
                    <option value="${user.id}">${user.username}</option>
                </c:forEach>
                    
                
            </select>
            <div class="invalid-feedback">
                Please select an owner.
            </div>
        </div>
    </div>
    <hr class="mb-4">
    <button class="btn btn-primary btn-lg btn-block" type="submit">Save</button></form>
    
    
    
        
        <script src="form-validation.js"></script>
</t:pageTemplate>



    

