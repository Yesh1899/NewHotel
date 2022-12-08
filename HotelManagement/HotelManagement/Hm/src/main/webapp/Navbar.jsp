<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
           pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hotel Management</title>

<link rel="icon" type="image/png"
           href="hotel-management/images/favicon.ico" />

<link rel="stylesheet" href="css/style.css">

<link
           href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
           rel="stylesheet" id="bootstrap-css">
<script
           src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
           integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
           crossorigin="anonymous"></script>
<script
           src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
           src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet"
           href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link rel="stylesheet"
           href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
           integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
           crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
           <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
           <div class="container-fluid">
                      <a class="navbar-brand" href="HotelLogo.png"><img
                                 class="logo-image" src="images/HotelLogo.png"></a>

                      <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                 data-bs-target="#navbarSupportedContent"
                                 aria-controls="navbarSupportedContent" aria-expanded="false"
                                 aria-label="Toggle navigation">
                                 <span class="navbar-toggler-icon"></span>
                      </button>

                      <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                 <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                            <li class="nav-item"><a class="nav-link" aria-current="page"
                                                       href="MainPage.jpg" id="home">Home</a></li>

                                            <li class="nav-item dropdown"><a
                                                       class="nav-link dropdown-toggle" href="#" id="admin" role="button"
                                                       data-bs-toggle="dropdown" aria-expanded="false">Admin</a>
                                                       <ul class="dropdown-menu" aria-labelledby="admin">
                                                                  <li><a class="dropdown-item" href="AdminLogin.xhtml">AdminLogin</a></li>
                                                                  
                                                   <li><a class="dropdown-item" href="ShowHotel.xhtml">show Hotel</a></li>
                                                  <li><a class="dropdown-item" href="ShowCustomer1.xhtml">Show Customer</a></li>           
                                                                  
                                                       </ul></li>

                                            <li class="nav-item dropdown"><a
                                                       class="nav-link dropdown-toggle" href="#" role="button"
                                                       data-bs-toggle="dropdown" id="Visitor" aria-expanded="false">Visitor</a>
                                                       <ul class="dropdown-menu" aria-labelledby="visitor">

                                                                  <li><a class="dropdown-item" href="addCustomer.xhtml">Add
                                                                                        Customer</a></li>


                                                       </ul></li>
                      </div>
