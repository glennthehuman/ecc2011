<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<html>
  <head>
    <title>User Profile</title>
    
    <script type="text/javascript" src="js/README.txt"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.14.custom/js/jquery-1.5.1.min.js"></script>
    <script src="js/jquery-ui-1.8.14.custom/development-bundle/ui/jquery.ui.core.js"></script>
    <script src="js/jquery-ui-1.8.14.custom/development-bundle/ui/jquery.ui.widget.js"></script>
    <script src="js/jquery-ui-1.8.14.custom/development-bundle/ui/jquery.ui.datepicker.js"></script>
    <link rel="stylesheet" href="js/jquery-ui-1.8.14.custom/development-bundle/demos/demos.css">
    <link rel="stylesheet" href="js/jquery-ui-1.8.14.custom/development-bundle/themes/base/jquery.ui.all.css">

    <script>
    $(function() {
        $("#birthDate").datepicker({
            changeMonth : true,
            changeYear : true,
            dateFormat : 'yy-mm-dd',
            yearRange : '-101:-18',
            maxDate : '-18y',
            minDate : '-101y'
        });
    });
    </script>

  </head>

  <body>
  
      <form method="POST"  id="saveUserForm" >
      
          <input type="hidden" name="userId" />

          <label for="userName">User Name*</label>
          <input type="text" name="userName" /> <br />

          <label for="password">Password*</label>
          <input type="password" name="password" /> <br />
          
          <label for="confirmPassword">Confirm Password*</label>
          <input type="password" name="confirmPassword" /> <br />
          
          <label for="lastName">Last Name*</label>
          <input type="text" name="lastName" /> <br />
          
          <label for="firstName">First Name*</label>
          <input type="text" name="firstName" /> <br />
          
          <label for="mi">M.I.*</label>
          <input type="text" name="mi" size="1" maxlength="1" /> <br />
          
          <label for="emailAddress">Email Address*</label>
          <input type="text" name="emailAddress" /> <br />
          
          <label for="gender">Gender*</label>
          <input type="radio" name='gender' value='Male' />Male 
          <input type="radio" name='gender' value='Female' />Female <br />
          
          <label for="birthDate">Birth Date</label>
          <input type="text" id="birthDate" name="birthDate" readonly/> <br />
            
          <label for="homeAddress">Home Address</label>
          <input type="text" name="homeAddress" /> <br />

          <label for="contactNumber">Contact Number</label>
          <input type="text" name="contactNumber" /> (numbers only.) <br />

        
          <div class="error">* required fields</div>
        
        <br/>
        <input type="submit" value="Save User" />
        <input type="reset" value="Reset" />
      </form>

      <a href='login.htm'>Back to Login</a><br/>

  </body>
</html>
