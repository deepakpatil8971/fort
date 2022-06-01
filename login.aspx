<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="login.css" rel="stylesheet" />
   
   

    <style>
         @import url('https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;600;700&display=swap');
body
{
  
  font-family: 'Nunito', sans-serif;
}

.video-container video{
  position: absolute;
  top:0; left: 0;
  z-index: -1;
  height: 100%;
  width:100%;
  object-fit: cover;
}

.controls
{
  padding:1rem;
  border-radius: 5rem;
  position: relative;
  top:8rem;
}

.login-form-container 
{
  width: 500px;
  height: 360px;
  margin: auto;
  background-color:white;
  border-radius: 0.5rem;
}

.login-form-container form h3 
{
  font-size: 3rem;
  color:#444;
  text-transform: uppercase;
  text-align: center;
  padding:1rem 0 ;
  margin-bottom: 16px;
}


.login-form-container form 
{
  width: 446px;
  margin-left: 20px;
}

.login-form-container form input 
{
  width: 100%;
  border: none;
  border: 1px solid gray;
  border-radius:1px;
  outline: none;
  color:#ffa500;
  padding: 0.8rem;;
  font-size: 10px;
  margin:.2rem 0;
  border: 0.1em solid rgba(0,0,0,.3);
  text-transform: none;
}

.login-form-container form .box:focus{
  border-color: var(--orange);;
}

.login-form-container form .btn 
{
  width: 460px;
  height: 43px;
  margin-top: 20px;
  border: none;
 background-color: #ffa500;
 color: white;
 font-size: 15px;
 border-radius: 22px;
}

.login-form-container-btn:hover{
  background:rgba(255, 165, 0,.2);
  color:#ffa500;
}

.upp{
  margin-top: -34px;
}


    </style>
   

</head>
<body>
     <div class="login-form-container">
    <form id="form1" runat="server">
    
   

    <i class="fas fa-times" id="form-close"></i>

    
        <h3>login</h3>
        <div class="controls">
            <span class="vid-btn active" data-src="images/Softest Beach.mp4"></span>
        </div>
    
        <div class="video-container">
            <video src="images/Softest Beach.mp4" id="video-slider" loop autoplay muted></video>
        </div>
        <div class="upp">

            <asp:TextBox ID="txtmail" class="box" placeholder="enter your email" runat="server" required></asp:TextBox>
            <asp:TextBox ID="txtpass" class="box"  placeholder="enter your password" runat="server" required></asp:TextBox>




            <asp:Button ID="Button2" runat="server" Text="login" OnClick="Button2_Click" />
        
            <asp:Label ID="lblmsg" ForeColor="Red" runat="server" ></asp:Label>
        <p>forget password? <a href="./forgotpassword.html">click here</a></p>
        <p>don't have and account? <a href="./signup.aspx">register now</a></p>
        </div>
    
        

    
    </form>
         </div>
</body>
</html>
