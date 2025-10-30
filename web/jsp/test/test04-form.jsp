<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>연산</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <h2>사칙연산</h2>

        <form method="post" action="/jsp/test/test04.jsp">
            <div class="d-flex">
                <input type="text" class="form-control col-2" name="number1">
                <select class="form-control col-1 ml-1" name="operator">
                    <option>+</option>
                    <option>-</option>
                    <option>X</option>
                    <option>÷</option>
                </select>
                <input type="text" class="form-control col-2 ml-1" name="number2">
                <button type="submit" class="btn btn-success ml-2">계산</button>

            </div>
        </form>

    </div>

</body>
</html>
