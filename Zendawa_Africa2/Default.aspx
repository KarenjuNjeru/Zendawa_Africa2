﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Zendawa_Africa2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Login/Registration</title>
</head>
<body>
<!-- 
    signin icon <i class="fa-solid fa-right-to-bracket"></i>
    username icon <i class="fa-solid fa-user"></i>
    password icon <i class="fa-solid fa-key"></i>
    google icon <i class="fa-brands fa-google"></i>
    facebook icon <i class="fa-brands fa-facebook"></i>
    email icon <i class="fa-solid fa-envelope"></i>
    sign up icon <i class="fa-solid fa-user-plus">

-->
    <div class="content">
        <form action="#" class="signin-form">
            <h2>Sign In</h2>

            <div class="input-bx">
                <input type="text" id="signinUsername" required placeholder="Username">
                <i class="fa-solid fa-user"></i>
            </div>
            <div class="input-bx">
                <input type="password" id="signinPassword" required placeholder="Password">
                <i class="fa-solid fa-key"></i>
                <p>forgot password?</p>
            </div>

            <button class="btn-signin" type="submit">Sign In <i class="fa-solid fa-right-to-bracket"></i></button>

            <div class="option-text"><hr><p>or sign in with</p></div>

            <div class="button-group">
                <button class="btn-google">Google <i class="fa-brands fa-google"></i></button>
                <button class="btn-facebook">Facebook <i class="fa-brands fa-facebook"></i></i></button>
            </div>

            <p class="message"><a href="#">Not a Member? click here</a></p>
        </form>

        <form action="#" class="signup-form">
            <h2>Sign Up</h2>

            <div class="input-bx">
                <input type="text" id="signupUsername" required placeholder="Username">
                <i class="fa-solid fa-user"></i>
            </div>
            <div class="input-bx">
                <input type="text" id="signupEmail" required placeholder="Email">
                <i class="fa-solid fa-envelope"></i>
            </div>
            <div class="input-bx">
                <input type="password" id="signupPassword" required placeholder="Password">
                <i class="fa-solid fa-key"></i>
                <p class="passShowHide">show</p>
            </div>

            <button class="btn-signin" type="submit">Sign Up <i class="fa-solid fa-user-plus"> </i></button>

            <div class="option-text"><hr><p>or sign up with</p></div>

            <div class="button-group">
                <button class="btn-google">Google <i class="fa-brands fa-google"></i></button>
                <button class="btn-facebook">Facebook <i class="fa-brands fa-facebook"></i></i></button>
            </div>

            <p class="message"><a href="#">Already a Member? click here</a></p>
        </form>
    </div>
    
    
    <script src="js/main.js"></script>
</body>


</asp:Content>
