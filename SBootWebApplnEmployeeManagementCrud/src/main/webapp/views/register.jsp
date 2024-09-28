<html>
<head>
    <style>
      form{
        border: 1px solid;
        width: fit-content;
        margin: auto;
        padding: 20px;
        background-color: rgb(140, 235, 140);
        margin-top: 30px;
      }
      input
      {
          block-size: 25px;
          margin-left: 30px;
           background-color: rgb(165, 165, 233);
           border-radius: 15px;
          
      }
      label{
          width: 90px;
          display: inline-block;
      }
      .sub
         {
            font-size: large;
            background-color: white;
         }

         .sub:hover
         {
            background-color: greenyellow;
         }
    </style>
</head>
<body style="background-color: rgb(81, 119, 81);">
<div>
  <h1 style = "color:rgb(33, 41, 33);text-align: center;">New Employee Registration</h1>
  <form action = "/regisUrl">
      <label>Employee Id:</label>
      <input type = "text" name = "empid"><p></p>
    <label>Name:</label>
    <input type = "text" name = "name"><p></p>
    <label>Password:</label>
    <input type = "password" name = "password"><p></p>
      <label>Email:</label>
      <input type = "email" name = "email"><p></p>
      <label>Gender:</label>
      <input type = "radio" name = "gender" value = "male">Male
      <input type = "radio" name = "gender" value = "female">Female<p></p>
      <label>Mobile Number:</label>
      <input type = "text" name = "mobileNumber"><p></p>
      <label>State:</label>
      <input type = "text" name = "state"><p></p>
      <label>Country:</label>
      <input type = "text" name = "country"><p></p>
      <label>Address:</label>
      <input type = "text" name = "address"><p></p>
    <input type = "submit" value =  "Register" class="sub">&emsp;&emsp;&emsp;
    <input type   = "reset" value  = "Reset" class="sub">
  </form>
</div>
</body>
</html>