<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Sem_5_Project.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tour and Travels</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link type="text/css" rel="stylesheet" href="CSS/bootstrap.css"/>
    <style>
        body{margin:0; padding:0;}
        .zoom{width:100%; height:1000px; position: relative; overflow: hidden; background: url(Images/Sky_Above.jpg); background-size: cover}
        .zoom:before{content: ''; position: absolute; bottom:0; width:100%; height:200px; z-index: 1000; background: linear-gradient(transparent, #fff)}
        .zoom #layer1{position: absolute; left: 50%; bottom: 20%; width: 100%; transform: translateX(-50%); z-index: 10;}
        .zoom #layer2{position: absolute; right: 0; width: 100%; z-index: 9;}
        .zoom #text{position: absolute; right: 0; width: 100%; transform: translateY(50%);}
        .content{padding:100px; box-sizing: border-box; font-family: consolas;}
        .content h2{margin:0; padding: 0; font-size: 4em;}
        .content p{font-size: 1.2em; }
        @media screen and (max-width:450px)
        {
            .zoom
            {
                height:500px;
            }
            .zoom #layer1
            {
                bottom:30%;
            }
        }
        .scrollmenu 
        {
            overflow: auto;
            white-space: nowrap;
        }
        .card
        {
            display: inline-block;
            margin-right:20px;
            margin-left:20px;
        }
        </style>
    <!--Style section ends-->

    <!--scripts-->
    <script src="https://ajax.googlespis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</head>
    <!--Head section Ends-->

    <!--Body section start-->
<body>
    <!--section for Image-->
    <section class="zoom">
    <img src="Images/Edited.png" id="layer1"/>
    </section>
    <!--Script for animation-->
    <script src="Scripts/JavaScript.js"></script>

    <!--Navigation bar-->
    <nav class="navbar navbar-expand-md bg-dark navbar-dark sticky-top">
        <span class="navbar-brand">Navbar Brand</span>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="Html/login-2.html">LOGIN</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Html/SignUp.html">Sign Up</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Packages</a>
            </li>
                </ul>
        </div>
    </nav>

    <!--Container for Marquee-->
    <div class="container-fluid">
        <div class="text-center">
            <b style="letter-spacing:15px; font-size:30px;">Live Currency Rates</b>
        </div>
        <marquee><b>New Zealand:</b>47.25  <b>Canada:</b>54.12    <b>United Kingdom:</b>92.62    <b>United States:</b>71.26    <b>Australia:</b>49.52     <b>Japan:</b>0.65      <b>South Africa:</b>5.039      <b>Russia:</b>1.15     <b>Malaysia:</b>17.255     <b>Singapore:</b>52.50     <b>Sir Lanka:</b>0.39      <b>Nepal:</b>0.625     <b>Maldives:</b>4.606      <b>Thailand:</b>0.46       <b>Vietnam:</b>0.00308     <b>Saudi Arabia:</b>19.002     <b>Oman:</b>184.85  <b>Kuwait:</b>235.165</marquee>
    </div>

    <!--New Package-->
    <b style="font-size:40px; margin-left:20px">International Packages</b>
    <!--Scrollable content-->
    <div class="scrollmenu bg-dark" style="padding:5px">
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            <button type="button" class="btn btn-dark" data-toggle="collapse" data-target="#demo">View</button>
            <div id="demo" class="collapse">
                Lorem ipsum color text
                Lorem ipsum color text
                Lorem ipsum color text
                Lorem ipsum color text
                Lorem ipsum color text
            </div>
        </div>

        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            <a class="btn btn-dark" href="#">View</a>
        </div>

        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            <a class="btn btn-dark" href="#">View</a>
        </div>

        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            <a class="btn btn-dark" href="#">View</a>
        </div>

        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            <a class="btn btn-dark" href="#">View</a>
        </div>

        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            <a class="btn btn-dark" href="#">View</a>
        </div>

        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
    </div>

<!--New  Package-->

    <b style="font-size:40px; margin-left:20px">India Packages</b>
    <div class="scrollmenu bg-dark" style="padding:5px">
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
    </div>

    <!--New Package-->
    <b style="font-size:40px; margin-left:20px">Frequent Packages</b>
    <div class="scrollmenu bg-dark" style="padding:5px">
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
        <div class="card bg-secondary" style="width:200px; padding:5px">
            <img class="card-img-top" src="Images/Sky_Above.jpg"/>
            <h4 class="card-title">Singapore</h4>
            
            <a class="btn btn-dark" href="#">View</a>
        </div>
    </div>

    <!--Footer-->
    <div class="bg-dark">
        <ul>
            <li>
                <a href="#">Booking</a>
            </li>
            <li>
                <a href="#">Cancellation</a>
            </li>
            <li>
                <a href="#">Packages</a>
            </li>
        </ul>
    </div>
</body>
</html>
