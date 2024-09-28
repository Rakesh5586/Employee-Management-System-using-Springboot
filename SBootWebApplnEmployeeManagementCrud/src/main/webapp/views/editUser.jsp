<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<form:form action = "/editUrl" method  ="Get">
    <label>ID</label>
    <form:input path ="empid"/><p></p>
    <label>NAME</label>
    <form:input path ="name"/><p></p>
    <label>PASSWORD</label>
    <form:input path ="password"/><p></p>
    <label>EMAIL</label>
    <form:input path ="email"/><p></p>
    <label>GENDER</label>
    <form:input path ="gender"/><p></p>
    <label>COUNTRY</label>
    <form:input path ="country"/><p></p>
   <input type  ="submit" value = "EditSave">
</form:form>