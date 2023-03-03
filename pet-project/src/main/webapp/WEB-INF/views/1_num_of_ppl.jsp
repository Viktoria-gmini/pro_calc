<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Calculator</title>
    <style>
        body {
            background-color: #e6e6e6;
            font-family: Arial, sans-serif;
        }
        form {
            margin-top: 20px;
        }
        input[type="number"] {
            padding: 10px;
            border: none;
            background-color: #f2f2f2;
            border-radius: 5px;
        }
        input[type="submit"] {
            padding: 10px;
            border: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>

<body>

<p>Hello calc!</p>
<p>Input number of people </p>

<form action = "people/create" method = "GET" th:object="${number}">
    Number of persons:  <input type="number" name = "num" step = "1" min = "2" max = "10" value ="2">
    <br />
    <input type = "submit" value = "Submit" />
</form>


</body>

</html>
