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
    </tr>
    </thead>
    <tbody>
    <tr th:each="one, itemStat : ${persons.peopleList}">
        <td th:text="${itemStat.index+1}" name = "id"></td>
        <td th:text="${one.name}" name = "name"></td>
    </tr>
    </tbody>
</table>
<form action="#" th:action="@{/people/save/newResults}" th:object="${persons}" method="post">
        <input type="submit" id="submitButton" th:value="Add">
        <a>
            purchase :  <input type="number" name = "cost" step = "0.01" min = "0" max = "10000000" value ="0">
        </a>
        <d/>
        <div>
            Was bought by :
        <select name = "selected_creditor">
            <option th:each="people : ${persons.peopleList}" th:value="${people.id}" th:text="${people.name}" ></option>
        </select>
        </div>

    <table>
    <tbody>
        <tr th:each="people2 : ${persons.peopleList}">
            <td th:text="${people2.name}"></td>
            <td><input type="checkbox"name="parts"  th:value="${people2.id}"/></td>
        </tr>
    </tbody>
    </table>
    <table border="1">
        <thead>
        <th>Debtors\Creditors</th>
        <th th:each="one : ${persons.peopleList}" th:text="${one.name}">
        </th>
        </thead>
        <tbody>
        <tr th:each="row,itemstat : ${persons.debts}">
            <th><input th:value="${persons.peopleList[itemstat.index].name}" type="text" readonly></th>
            <td th:each="debt : ${row}">
                <input type="text" th:value="${debt}" readonly/>
            </td>
        </tr>
        </tbody>
    </table>
</form>
<d/><d/>

</body>
</html>
