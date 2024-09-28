<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
    <style>
        body{
             background-color: rgb(214, 119, 119);
        }
        label
        {
            width: 100px;
            display: inline-block;
            margin: 10px;
        }
        form{
            border: 1px solid;
            width: fit-content;
            border-radius: 10px;
            margin: auto;
            padding: 20px;
            text-align: center;
            margin-top: 60px;
            background-color: black;
            color: white;
        }
        .sub
         {
            font-size: large;
            padding: 5px;
            width: 50%;
            background-color: white;
         }
         .sub:hover
         {
            background-color: greenyellow;
         }
    </style>
</head>
<body>
    <form action="/loginvalidUrl">
        <h1> Employee Login Here</h1>
        <label>Employee ID:</label>
        <input type = "text" name = "empid"><P></P>
        <label>Password:</label>
        <input type ="password" name ="password"><P></P>
        <input type = "submit" value="Login" class="sub">
        </form>
</body>
</html>