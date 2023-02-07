<html xmlns:th="http://www.thymeleaf.org" lang="en">
<head>
    <title>Calculator</title>
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
            <tr th:each="one, itemStat : *{peopleList}">
                <td th:text="${itemStat.index+1}" name = "id"></td>
                <td><input th:field="*{peopleList[__${itemStat.index}__].name}" type="text"></td>
            </tr>
            </tbody>
        </table>
    </fieldset>
</form>
</body>
</html>
