<%-- 
    Document   : registration
    Created on : Aug 26, 2024, 11:18:50?AM
    Author     : mohit07
--%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head> 
<title>Virtual Office</title> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<link href="css/style.css" rel="stylesheet" type="text/css" /> 
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" /> 

<script type="text/javascript" src="js/cufon-yui.js"></script> 
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script> 
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script> 
<script type="text/javascript" src="js/script.js"></script> 
<script type="text/javascript" src="js/coin-slider.min.js"></script> 
</head> 
<body> 
<div class="main"> 
  <div class="header"> 
    <div class="header_resize"> 
      
      <div class="logo"> 
        <h1><a href="index.html"><span>Office</span>Manager</a></h1> 
      </div> 
      <div class="clr"></div> 
      <div class="menu_nav" style="width:1000px; "> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<ul> 
          <li class="active"><a href="index.jsp"><span>Home Page</span></a></li> 
          <li><a href="about.jsp"><span>About Us</span></a></li> 
           <li><a href="contact.jsp"><span>Contact Us</span></a></li> 
        </ul> 
      </div> 
      <div class="clr"></div> 
      <div class="slider" > 
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" 
/></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /> </a><a 
href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /> </a></div> 
       <div class="clr"></div> 
      </div> 
      <div class="clr"></div> 
    </div> 
  </div><br> 
 <center> 
      <div style="width:350px;height:250px;"> 
         <form action="RegisterCompany" method="get"> 
             <fieldset style="width: 350px;height: 250px;border:5px solid black;backgroundcolor:dodgerblue;"> 
                   <legand><h2 style="color:green;">Company Registration</h2></legand> 
             <table width="350"  height="250"> 
            <tr  height="30px"><td width="10px"><lable style="color:white;">User Type</lable></td><td 
width="10px" align="center"><select name="t1" value="Admin" style="width: 140px;height:70px;
  background-color: #A0EDE5;"><option>Company</option></select></td><td 
width="10px"></td></tr>  
              <tr><td  align=left><lable style="color:white;">Company Id</lable><lable 
style="color:red;">*</lable><td><input type=text name="t2"/></td></tr><tr height="10px"></tr> 
              <tr><td  align=left><lable style="color:white;">Password</lable><lable 
style="color:red;">*</lable></td><td><input type=password name="t3"/></td></tr><tr 
height="5px"></tr> 
      <tr width="30px"><td width="10px"></td><td width="10px" align="center"><input type="submit" 
value="Register" style="width:70px;height: 25px;background-color: #ACF7D1;"></td><td 
width="10px"></td></tr> 
      <tr height="10px"></tr>  <tr width="30px" height="20px"><td width="10px"></td><td width="10px" 
align="center"><td><td width="10px"></td></tr>  
 
</table> 
                
             
</fieldset> 
                  
          </form> 
</div></center> 
<br/><br/> 
</div> 
</body> 
</html> 