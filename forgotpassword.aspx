<%@ Page Language="VB" AutoEventWireup="false" CodeFile="forgotpassword.aspx.vb" Inherits="forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./forgotpassword.css">
    <title> Forgot Password </title>
    
  </head>
</head>
<body>
    <form id="form1" runat="server">
    <body>
    <div class="forgot-form-container">
        <i class="fas fa-times" id="form-close"></i>
    <form action="">
    <div class="center">
      <h4>Forgot Password</h4>
      <div class="controls">
        <span class="vid-btn active" data-src="images/Softest Beach.mp4"></span>
    </div>

    <div class="video-container">
        <video src="images/Softest Beach.mp4" id="video-slider" loop autoplay muted></video>
    </div>

        <div class="upp">
            <label>Enter Mobile Number</label>
            <span></span>
          <input type="text" required>
          <span></span>
          
        </div>
       
        
        <input type="submit" value="GET OTP" class="btn">
        
      </form>
    </div>

  </body>
    </form>
</body>
</html>
