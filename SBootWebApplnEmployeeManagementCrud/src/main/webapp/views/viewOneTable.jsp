<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<%@ taglib uri  = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<head>
    <style>
         td{
        text-align: center;
        padding: 5px;
    }
    body{
        background-color: rgb(72, 173, 173);
        text-align: center;
    }
    a{
        text-decoration: none;
        color: black;
    }
    table{
        border-collapse: collapse;
        width: 100%;
        height: 10%;
    }
    a:hover
    {
        color: red;
     }
    .action
    {
        background-color: blueviolet;
    }
    
    </style>
</head>
<body>
    <h1>Display One Employee Details</h1>
    <center>
<table border="1">
<tr>
    <th>EMPLOYEE ID</th>
    <th>NAME</th>
    <th>PASSWORD</th>
    <th>EMAIL</th>
    <th>GENDER</th>
    <th>MOBILE NUMBER</th>
    <th>STATE</th>
    <th>COUNTRY</th>
    <th>ADDRESS</th>
    <th colspan="2">Action</th>
</tr>
    <tr>
        <td>${empss.empid}</td>
        <td>${empss.name}</td>
        <td>${empss.password}</td>
        <td>${empss.email}</td>
        <td>${empss.gender}</td>
        <td>${empss.mobileNumber}</td>
        <td>${empss.state}</td>
        <td>${empss.country}</td>
        <td>${empss.address}</td>
        <div class="action">
        <td><a href="/editUrl/${empss.empid}">Edit</a></td>
        <td><a href="/deleteUrl/${empss.empid}">Delete</a></td>
    </div>
    </tr>
</table>
</center>
</body>