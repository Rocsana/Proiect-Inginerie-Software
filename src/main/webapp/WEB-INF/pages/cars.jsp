<%-- 
    Document   : cars
    Created on : Nov 3, 2020, 8:26:56 AM
    Author     : rocsy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>


<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>
    <div>
        <div class="themed-grid-col">
            Car 1
        </div>
        <div class="themed-grid-col">
            Spot 1
        </div>
        <div class="themed-grid-col">
            User 1
        </div>
    </div>
    <div>
        <div class="themed-grid-col">
            Car 2
        </div>
        <div class="themed-grid-col">
            Spot 2
        </div>
        <div class="themed-grid-col">
            User 2
        </div>
    </div>
    <div>
        <div class="themed-grid-col">
            Car 3
        </div>
        <div class="themed-grid-col">
            Spot 3
        </div>
        <div class="themed-grid-col">
            User 3
        </div>
    </div>
    <div>
        <div class="themed-grid-col">
            Car 4
        </div>
        <div class="themed-grid-col">
            Spot 4
        </div>
        <div class="themed-grid-col">
            User 4
        </div>
    </div>
    <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTemplate>
