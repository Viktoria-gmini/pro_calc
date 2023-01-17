<html xmlns:th="http://www.thymeleaf.org" lang="en">
<head>
    <title>Calculator</title>
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
    <tr th:each="one, itemStat : ${persons.peopleList}">
        <td th:text="${itemStat.index+1}" name = "id"></td>
        <td th:text="${one.name}" name = "name"></td>
        <td th:text="${one.number_of_people}" name = "num_of_ppl"></td>
    </tr>
    </tbody>
</table>
</body>
</html>
