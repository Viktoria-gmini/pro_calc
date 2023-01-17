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
                <th>Number of persons</th>
            </tr>
            </thead>
            <tbody>
            <tr th:each="one, itemStat : *{peopleList}">
                <td th:text="${itemStat.index+1}" name = "id"></td>
                <td><input th:field="*{peopleList[__${itemStat.index}__].name}" type="text"></td>
                <td><input type="number" th:field="*{peopleList[__${itemStat.index}__].number_of_people}" step = "1" min = "1" max = "10" value ="1"></td>
            </tr>
            </tbody>
        </table>
    </fieldset>
</form>
</body>
</html>
