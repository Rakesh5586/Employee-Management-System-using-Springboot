<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
    td{
        text-align: center;
        padding: 5px;
    }
    body{
        background-color: rgb(72, 173, 173);
    }
    a{
        text-decoration: none;
        color: black;
    }
    table{
        border-collapse: collapse;
        width: 100%;
        height: 70%;
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
<center>
<h1> View Employee Details</h1>   
<table border="1" style="width: 100%; background-color: aquamarine;">
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
 <c:forEach var = "user" items = "${users}">
    <tr>
        <td>${user.empid}</td>
        <td>${user.name}</td>
        <td>${user.password}</td>
        <td>${user.email}</td>
        <td>${user.gender}</td>
        <td>${user.mobileNumber}</td>
        <td>${user.state}</td>
        <td>${user.country}</td>
        <td>${user.address}</td>
        <div class="action">
            <td><a href="/editUrl/${user.empid}">Edit</a></td>
            <td><a href="/deleteUrl/${user.empid}">Delete</a></td>
        </div>
    </tr>
</c:forEach>
</table>
<h1>
<a href="/registerUrl">AddNewEmployee</a>
</h1>
</center>  