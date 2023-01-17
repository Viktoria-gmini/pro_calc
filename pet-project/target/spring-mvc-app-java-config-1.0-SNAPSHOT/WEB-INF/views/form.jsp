<html xmlns:th="http://www.thymeleaf.org" lang="ru">
<head>
    <title>Title</title>
</head>
<body>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Number of persons</th>
    </tr>
    </thead>
    <tbody>
    <tr th:each="one : ${persons.peopleList}">
        <td th:text="${one.id}" name = "id"></td>
        <td th:text="${one.name}" name = "name"></td>
        <td th:text="${one.number_of_people}" name = "num_of_ppl"></td>
    </tr>
    </tbody>
</table>
</body>
</html>
