
<html xmlns:th="http://www.thymeleaf.org" lang="en">
<head>
    <title>Calculator</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style>
        body {
            background-color: #e6e6e6;
            font-family: Arial, sans-serif;
        }

        h1, h2, h3 {
            font-weight: normal;
            margin-top: 0;
            margin-bottom: 10px;
        }

        input[type="submit"], button {
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

<form action="#" th:action="@{/people/save}" th:object="${persons}"
      method="post">
    <fieldset>
        <input type="submit" id="submitButton" th:value="Save">
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
            </tr>
            </thead>
            <tbody>
            <tr th:each="one, itemStat : ${persons.peopleList}">
                <td th:text="${itemStat.index+1}" name = "id"></td>
                <td><input th:field="*{peopleList[__${itemStat.index}__].name}" type="text"></td>
            </tr>
            </tbody>
        </table>
    </fieldset>
</form>
<form action="/pet_project_war_exploded">
    <input type="submit" value="Back" />
</form>
</body>
</html>
