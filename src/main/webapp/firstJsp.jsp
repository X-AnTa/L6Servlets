<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>First JSP</title>
</head>
<body>
<h1>
    <p>
        <%
            String numbers = request.getParameter("numbers");
            int[] nums = Arrays.stream(numbers.split(",")).mapToInt(Integer::parseInt).toArray();
            Arrays.sort(nums);
        %>

        <%= "Вы ввели числа: " + Arrays.toString(nums)%>
    </p>
</h1>
<%--http://localhost:8080/?numbers=7,8,4,2,5,9,15,778,654,2156,485,44--%>


</body>
</html>
