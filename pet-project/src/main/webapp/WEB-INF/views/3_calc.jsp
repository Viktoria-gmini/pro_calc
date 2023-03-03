
<html xmlns:th="http://www.thymeleaf.org" lang="en">
<head>
    <title>Calculator</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style>
        body {
            background-color: #e6e6e6;
            font-family: Arial, sans-serif;
        }
        table {
            border-collapse: collapse;
            margin: 20px 0;
            text-align: right;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        td {
            background-color: #f2f2f2;
            min-width: 50px;
        }

        input[type="number"] {
            padding: 5px;
            border: 1px;
            background-color: #ffffff;
            border-radius: 5px;
        }

        input[type="submit"], button {
            padding: 10px;
            border: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }


        select {
            padding: 5px;
            border: 1px;
            background-color: #ffffff;
            border-radius: 5px;
            width: 90px;
        }
        .container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-gap: 10px;
        }

        .element {
            padding: 3px;
            background-color: #f2f2f2;
            border-radius: 5px;
        }
        .selection {
            position: relative;
            left: 30px;
        }
    </style>
</head>
<body>
<div class = "container">
    <div class = "element" align = "center">
        <table border="1">
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
        <form action="/pet_project_war_exploded">
            <input type="submit" value="Back" />
        </form>
    </div>
<form action="#" th:action="@{/people/save/newResults}" th:object="${persons}" method="post" align="left">
    <div class = "element">
        purchase :  <input type="number" name = "cost" step = "0.01" min = "0" max = "10000000" value ="0">
    </div>
    <d/>
    <div class = "element">
        Was bought by :
    <select name = "selected_creditor">
        <option th:each="people : ${persons.peopleList}" th:value="${people.id}" th:text="${people.name}" ></option>
    </select>
    </div>
    <div class = "element" align = "left">
        Was used by :
    <div class = "selection" >
        <table  >
            <tbody>
            <tr th:each="people2 : ${persons.peopleList}">
                <td th:text="${people2.name}"></td>
                <td><input type="checkbox"name="parts"  th:value="${people2.id}"/></td>
            </tr>
            </tbody>
        </table>
    </div>
    </div>

    <div class = "element">
        <input type="submit" id="submitButton" th:value="Add">
    </div>

</form>
    <div class = "element">
    <table border="1" >
        <thead>
        <th>Debtors\Creditors</th>
        <th th:each="one : ${persons.peopleList}" th:text="${one.name}">
        </th>
        </thead>
        <tbody>
        <tr th:each="row,itemstat : ${persons.debts}">
            <th><input th:value="${persons.peopleList[itemstat.index].name}"  type="text" readonly></th>
            <td th:each="debt : ${row}">
                <input type="text"  th:value="${debt}" readonly/>
            </td>
        </tr>
        </tbody>
    </table>
    </div>
</div>
</body>
</html>
