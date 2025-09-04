<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="includes/header.html" %>

<div class="container">
    <h1>Thank you for your submission!</h1>

    <c:if test="${not empty survey}">
        <p>First Name: ${survey.firstName}</p>
        <p>Last Name: ${survey.lastName}</p>
        <p>Email: ${survey.email}</p>
        <p>Date of Birth: ${survey.dob}</p>
        <p>Heard about us: ${survey.hear}</p>
        <p>Announcements 1: ${survey.announce1}</p>
        <p>Announcements 2: ${survey.announce2}</p>
        <p>Contact method: ${survey.contact}</p>
        <a href="index.jsp" class="btn btn-secondary">Back to survey</a>
    </c:if>
</div>

<%@ include file="includes/footer.jsp" %>
