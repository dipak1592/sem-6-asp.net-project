<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="footer.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <style>
        footer
        {
             background-color:white;
             padding: 85px 0;
        }
        .single-content
        {
            padding: 115px 0;
            text-align:center;
        }
        .single-box
        {
            color:black;
            line-height:1.9;

        }
        .single-box h3
        {
            font-size:16px;
            font-weight:700;
            color:black;
        }
        .single-box .card-area i
        {
            color:black;
            font-size:20px;
            margin-right:10px;

        }
        .single-box ul
        {
            list-style:none;
            padding:0;
        }
        .single-box ul li a
        {
            text-decoration:none;
            color:black;
            line-height:2.5;
            font-weight:100;

        }
        .single-box h2
        {
            background-color:;
            color:rgb(235 42 43);
            font-size:20px;
            font-weight:700;

        }
        #basic-addon2
        {
            background:#fe1e4f;
            color:#fff;
        }
        .socials i
        {
            font-size:18px;
            margin-right:15px;

        }
        @media(max-width:767px)
        {
            .single-box
            {
                margin-bottom:50px;
            }
        }
        @media(min-width:768px) and (max-width:991px)
        {
            .single-box
            {
                margin-bottom:50px;
            }
        }
    </style>
    <footer style="background-color:white;">
        <div class="container" style="background-color:white;">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-box">
                        <img src="image/logo3.png" alt="livgard logo" width="200px;" height="200px;"/>
                       <h3 >LIVGARD ENERGY PRIVATE LIMITED</h3>
                         <h5 style="color:black;">GIDC-Dhrangadhra-363310 Plote-No:084</h5>
                        <h5 style="color:black;">livgard_007@gmail.com</h5>

                        <h3>We accept</h3>
                        <div class="card-area">
                            <i class="fa fa-cc-visa"></i>
                            <i class="fa fa-credit-card"></i>
                            <i class="fa fa-cc-mastercard"></i>
                            <i class="fa fa-cc-paypal"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-box">
                        <h2><u>Company</u> </h2>
                        <ul>
                            <li><a href="#">About-us</a></li>
                            <li><a href="#">E-waste management</a></li>
                            <li><a href="#">Home Solution</a></li>
                            <li><a href="#">Automotive Solution</a></li>
                            <li><a href="#">Solar Saving Calculation</a></li>
                            <li><a href="#">Offers</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-box">
                        <h2><u>Support</u> </h2>
                        <ul>
                            <li><a href="#">Contact-us</a></li>
                            <li><a href="#">Service</a></li>
                            <li><a href="#">Warranty Registration</a></li>
                            <li><a href="#">Termsn & conditions</a></li>
                            <li><a href="#">Sales Return Policy</a></li>
                            <li><a href="#">Privacy policy</a></li>
                        </ul>
                    </div>
                </div>
                 <div class="col-lg-3 col-sm-6">
                    <div class="single-box">
                        <h2><u>News Letters</u> </h2>

                       <p style="color:black;">The mischievous energy thief 'Wattson' is on the move with an inverter and battery combo! Help us in this quest to find and catch him. Follow the clues, unmask the mystery, and seize unique rewards along the way!</p>
                       <input type="text" class="form-control" placeholder="Enter your Email..." aria-label="Recipient's username" aria-describedby="basic-addon2"/>
                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-long-arrow-right"></i></span>
                    </div>
                     <h2>Follows us on</h2>
                     <p class="socials" style="color:black;">
                         <i class="fa fa-facebook"></i>
                         <i class="fa fa-dribbble"></i>
                         <i class="fa fa-pinterest"></i>
                         <i class="fa fa-twitter"></i>
                     </p>   
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.0/js/bootstrap.min.js"></script>
</asp:Content>

