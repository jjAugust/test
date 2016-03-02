<!DOCTYPE html><html class=''>
<head><meta charset='UTF-8'>

<link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css'>
<style class="cp-pen-styles">*
{
margin:0px;
padding:0px;
}
  
body{
background:#222526;
position:relative;
padding:100px;
font-family:verdana;
background: url('images/bg.jpg');
		background-size: cover;
		color: #999;
		color: rgba(255,255,255,0.6);
} 
   


#loginform
{
width:550px;
height:auto;
position:relative;
margin:0 auto;
}

input
{
display:block;
margin:0px auto 15px;
border-radius:5px;
background: #333333;
width:85%;
padding:12px 20px 12px 10px;
border:none;
color:#929999;                       
box-shadow:inset 0px 1px 5px #272727;
font-size:0.8em;
-webkit-transition:0.5s ease;
-moz-transition:0.5s ease;
-o-transition:0.5s ease;
-ms-transition:0.5s ease;
transition:0.5s ease; 
}

input:focus
{
-webkit-transition:0.5s ease;
-moz-transition:0.5s ease;
-o-transition:0.5s ease;
-ms-transition:0.5s ease;
transition:0.5s ease;  
box-shadow: 0px 0px 5px 1px #161718;
}

button
{
background: #ff5f32;
border-radius:50%;
border:10px solid #222526;
font-size:0.9em;
color:#fff;
font-weight:bold;
cursor:pointer;
width:85px;
height:85px;
position:absolute;
right: -42px;
top: 54px;
text-align:center;
-webkit-transition:0.5s ease;
-moz-transition:0.5s ease;
-o-transition:0.5s ease;
-ms-transition:0.5s ease;
transition:0.5s ease;
}

button:hover
{
background:#222526;
border-color:#ff5f32;
-webkit-transition:0.5s ease;
-moz-transition:0.5s ease;
-o-transition:0.5s ease;
-ms-transition:0.5s ease;
transition:0.5s ease;
}

button i
{
font-size:20px;
-webkit-transition:0.5s ease;
-moz-transition:0.5s ease;
-o-transition:0.5s ease;
-ms-transition:0.5s ease;
transition:0.5s ease;
}

button:hover i
{
color:#ff5f32;
-webkit-transition:0.5s ease;
-moz-transition:0.5s ease;
-o-transition:0.5s ease;
-ms-transition:0.5s ease;
transition:0.5s ease;
}
  
*:focus{outline:none;}
::-webkit-input-placeholder {
color:#929999;
}

:-moz-placeholder { /* Firefox 18- */
color:#929999; 
}

::-moz-placeholder {  /* Firefox 19+ */
color:#929999;  
}

:-ms-input-placeholder {  
color:#929999; 
}

h1
{
text-align:center;
color:#fff;
font-size:13px;
padding:12px 0px;
}

#note
{
color:#88887a;
font-size: 0.8em;
text-align:left;
padding-left:5px;
}

#facebook
{
text-align:center;
float:left;
background:#365195;
padding:35px 10px 20px 10px;
width:170px;
height:135px; 
border-radius:3px;
cursor:pointer;
box-shadow: 0px 0px 10px 2px #161718; 
margin-right:10px;
-webkit-transition:0.5s ease;
-moz-transition:0.5s ease;
-o-transition:0.5s ease;
-ms-transition:0.5s ease;
transition:0.5s ease;
}

#facebook:hover
{
box-shadow: 0px 0px 0px 0px #161718;
-webkit-transition:0.5s ease;
-moz-transition:0.5s ease;
-o-transition:0.5s ease;
-ms-transition:0.5s ease;
transition:0.5s ease;
}

.fa-facebook
{
color:#fff;
font-size:7em;
display:block;
}

a
{
color:#88887a;
text-decoration:none;
-webkit-transition:0.5s ease;
-moz-transition:0.5s ease;
-o-transition:0.5s ease;
-ms-transition:0.5s ease;
transition:0.5s ease;
}

a:hover
{
color:#fff;
margin-left:5px;
-webkit-transition:0.5s ease;
-moz-transition:0.5s ease;
-o-transition:0.5s ease;
-ms-transition:0.5s ease;
transition:0.5s ease;
}

#mainlogin
{
float:left;
width:250px;
height:170px;
padding:10px 15px;
position:relative;
background:#555555;
border-radius:3px;
}

#connect
{
font-weight: bold;
color: #fff;
font-size: 13px;
text-align: left;
font-family: verdana;
padding-top:10px;
}

#or
{
position:absolute;
left: -25px;
top: 10px;
background:#222222;
text-shadow:0 2px 0px #121212;
color:#999999;
width:40px;
height:40px;
text-align:center;
border-radius:50%;
font-weight:bold;
line-height:38px;
font-size: 13px;
}
</style></head><body>
<div id="loginform">
<div id="facebook"><i class="fa fa-facebook"></i><div id="connect">Connect with Facebook</div></div>
<div id="mainlogin">
<div id="or">or</div>
<h1>Log in with awesome new thing</h1>


<form  action="/loginController/login2.do" method="post">
<input type="text" name="name" placeholder="username or email" value="" required>
<input type="password" name="password" placeholder="password" value="" required>
<button type="submit"><i class="fa fa-arrow-right"></i></button>
</form>
<div id="note"><a href="#">Forgot your password?</a></div>
</div>
</div>
</body></html>