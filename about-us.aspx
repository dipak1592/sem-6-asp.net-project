﻿<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="about-us.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
         /* Importing Google font - Open Sans */
<!--
#main-div{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Open Sans", sans-serif;
}

#body-main{
    height: 100vh;
    width: 100%;
    background: url("images/hero-bg.jpg") center/cover no-repeat;
}

#header-main
{
    position: fixed;
    width: 100%;
    top: 0;
    left: 0;
    z-index: 10;
    padding: 0 10px;
}

.form-popup {
    position: fixed;
    top: 50%;
    left: 50%;
    z-index: 10;
    width: 100%;
    opacity: 0;
    pointer-events: none;
    max-width: 720px;
    background: #fff;
    border: 2px solid #fff;
    transform: translate(-50%, -70%);
}

.show-popup .form-popup {
    opacity: 1;
    pointer-events: auto;
    transform: translate(-50%, -50%);
    transition: transform 0.3s ease, opacity 0.1s;
}

.form-popup .close-btn {
    position: absolute;
    top: 12px;
    right: 12px;
    color: #878484;
    cursor: pointer;
}

.blur-bg-overlay {
    position: fixed;
    top: 0;
    left: 0;
    z-index: 10;
    height: 100%;
    width: 100%;
    opacity: 0;
    pointer-events: none;
    backdrop-filter: blur(5px);
    -webkit-backdrop-filter: blur(5px);
    transition: 0.1s ease;
}

.show-popup .blur-bg-overlay {
    opacity: 1;
    pointer-events: auto;
}

.form-popup .form-box {
    display: flex;
}

.form-box .form-details {
    width: 100%;
    color: #fff;
    max-width: 330px;
    text-align: center;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.login .form-details {
    padding: 0 40px;
    background: url("images/login-img.jpg");
    background-position: center;
    background-size: cover;
}

.form-box .form-content {
    width: 100%;
    padding: 35px;
}

.form-box h2 {
    text-align: center;
    margin-bottom: 29px;
}

form .input-field {
    position: relative;
    height: 50px;
    width: 100%;
    margin-top: 20px;
}

.input-field input {
    height: 100%;
    width: 100%;
    background: none;
    outline: none;
    font-size: 0.95rem;
    padding: 0 15px;
    border: 1px solid #717171;
    border-radius: 3px;
}

.input-field input:focus {
    border: 1px solid #00bcd4;
}

.input-field label {
    position: absolute;
    top: 50%;
    left: 15px;
    transform: translateY(-50%);
    color: #4a4646;
    pointer-events: none;
    transition: 0.2s ease;
}

.input-field input:is(:focus, :valid) {
    padding: 16px 15px 0;
}

.input-field input:is(:focus, :valid)~label {
    transform: translateY(-120%);
    color: #00bcd4;
    font-size: 0.75rem;
}

.form-box a {
    color: #00bcd4;
    text-decoration: none;
}

.form-box a:hover {
    text-decoration: underline;
}

form :where(.forgot-pass-link, .policy-text) {
    display: inline-flex;
    margin-top: 13px;
    font-size: 0.95rem;
}

form button {
    width: 100%;
    color: #fff;
    border: none;
    outline: none;
    padding: 14px 0;
    font-size: 1rem;
    font-weight: 500;
    border-radius: 3px;
    cursor: pointer;
    margin: 25px 0;
    background: #00bcd4;
    transition: 0.2s ease;
}

form button:hover {
    background: #0097a7;
}

.form-content .bottom-link {
    text-align: center;
}

.form-popup .signup,
.form-popup.show-signup .login {
    display: none;
}

.form-popup.show-signup .signup {
    display: flex;
}



@media (max-width: 760px) {
    .form-popup {
        width: 95%;
    }

    .form-box .form-details {
        display: none;
    }

    .form-box .form-content {
        padding: 30px 20px;
    }
}
    -->
    
     <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0">
    
    <div id="main-div"  class="blur-bg-overlay"></div>
    <div id="body-main" class="form-popup">
        <span class="close-btn material-symbols-rounded">close</span>
        <div id="header-main" class="form-box login">
            <div class="form-details">
                <h2>Welcome Back</h2>
                <p>Please log in using your personal information to stay connected with us.</p>
            </div>
            <div class="form-content">
                <h2>LOGIN</h2>
                <form action="#">
                    <div class="input-field">
                        <input type="text" required>
                        <label>Email</label>
                    </div>
                    <div class="input-field">
                        <input type="password" required>
                        <label>Password</label>
                    </div>
                    <a href="#" class="forgot-pass-link">Forgot password?</a>
                    <button type="submit">Log In</button>
                </form>
                <div class="bottom-link">
                    Don't have an account?
                    <a href="register.aspx" id="signup-link">Signup</a>
                </div>
            </div>
        </div>
        </div>
</asp:Content>


