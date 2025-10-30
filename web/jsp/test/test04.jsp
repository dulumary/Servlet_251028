<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>연산 결과</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <%
        int number1 = Integer.parseInt(request.getParameter("number1"));
        int number2 = Integer.parseInt(request.getParameter("number2"));

        // +, -, X, ÷
        String operator = request.getParameter("operator");

        double result = 0;
        if(operator.equals("+")) {
            result = number1 + number2;
        } else if(operator.equals("-")) {
            result = number1 - number2;
        } else if(operator.equals("X")) {
            result = number1 * number2;
        } else if(operator.equals("÷")) {
            result = number1 / (double)number2;
        }
    %>

    <div class="container">
        <h2>계산 결과</h2>
        <div class="display-3"><%= number1 %> <%= operator %> <%= number2 %> = <span class="text-primary"><%= result %></span></div>
    </div>

</body>
</html>
