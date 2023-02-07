<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Calculator</title>
</head>

<body>

<p>Hello calc!</p>
<p>Input number of people and group of people</p>

<form action = "people/create" method = "GET" th:object="${number}">
    Number of persons:  <input type="number" name = "num" step = "1" min = "2" max = "10" value ="2">
    <br />
    <input type = "submit" value = "Submit" />
</form>


</body>

</html>
