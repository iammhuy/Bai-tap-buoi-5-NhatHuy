<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%@ include file="includes/header.html" %>

<main class="container">
    <h1>Your information:</h1>
    <form action="${pageContext.request.contextPath}/survey" method="get">
        First Name: <input type="text" name="firstName" required><br>
        Last Name: <input type="text" name="lastName" required><br>
        Email: <input type="email" name="email" required><br>
        Date of Birth: <input type="date" name="dob" required><br>

        <h1>How did you hear about us?</h1>
        <input type="radio" name="hear" value="Search engine" checked>Search engine
        <input type="radio" name="hear" value="Word of mouth">Word of mouth
        <input type="radio" name="hear" value="Social Media">Social Media
        <input type="radio" name="hear" value="Other">Other
        <br>

        <h1>Announcements:</h1>
        <input type="checkbox" name="announce1" value="CD offers"> YES, about CDs<br>
        <input type="checkbox" name="announce2" value="Email only"> YES, email announcements<br>

        <h1>Contact me by:</h1>
        <select name="contact">
            <option value="Email or postal mail">Email or postal mail</option>
            <option value="Email only">Email only</option>
            <option value="Postal mail only">Postal mail only</option>
        </select><br><br>

        <input type="submit" value="Submit">
    </form>
</main>
    
<%@ include file="includes/footer.jsp" %>
