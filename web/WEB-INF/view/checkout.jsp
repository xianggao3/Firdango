<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type = "text/javascript" language = "javascript">
    $(document).ready(function() {
        $("#quantity").on('keyup mouseup', function () {
            var numTicks = $("#quantity").value
            var subt = $("#subtotal").value
            alert(subt);

            //subt = numTicks*subt;
            $("#subtotal").html();
        });
    });
</script>
<head>
    <title>Firdango</title>
    <meta charset="utf-8">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/css/checkout.css" rel="stylesheet">

    <!--
    Font Scheme

    Logo (Branding): Roboto
    Movie Titles:    Maven Pro
    Primary Texts (eg. article title):     Raleway
    Secondary Texts (eg. article content): Josefin Sans
    -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300|Roboto|Maven+Pro|Josefin+Sans:300,400" rel="stylesheet">
</head>

<body>
    <div class="container">
        <div class="row form-group">
            <div class="col-xs-12">
                <ul class="nav nav-pills nav-justified thumbnail setup-panel">
                    <li class="active">
                        <a href="#step-1">
                            <h4 class="list-group-item-heading">Step 1</h4>
                            <p class="list-group-item-text">Ticket Count</p>
                        </a>
                    </li>
                    <li class="disabled">
                        <a href="#step-2">
                            <h4 class="list-group-item-heading">Step 2</h4>
                            <p class="list-group-item-text">Seating</p>
                        </a>
                    </li>
                    <li class="disabled">
                        <a href="#step-3">
                            <h4 class="list-group-item-heading">Step 3</h4>
                            <p class="list-group-item-text">Payment</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row setup-content" id="step-1">
            <div class="col-xs-12">
                <div class="col-md-12 well text-center">
                    <h1 class="text-center">STEP 1: How Many Tickets?</h1>
                    <div class="container">
                        <table id="cart" class="table table-hover table-condensed">
                            <thead>
                                <tr>
                                    <th style="width:50%">Product</th>
                                    <th style="width:10%">Price</th>
                                    <th style="width:8%">Quantity</th>
                                    <th style="width:22%" class="text-center">Subtotal</th>
                                    <th style="width:10%"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td data-th="Product">
                                        <div class="row">
                                            <div class="col-sm-2 hidden-xs"><img src="https://images.fandango.com/r103.4/ImageRenderer/180/272/redesign/static/img/default_poster_128x190.png/183502/images/masterrepository/fandango/183502/fifty%20shades%20darker.jpg" alt="#" class="img-responsive" /></div>
                                            <div class="col-sm-10">
                                                <h4 class="nomargin">Fifty Shades Darker</h4>
                                                <p>Adult</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td data-th="Price">$11.99</td>
                                    <td data-th="Quantity">
                                        <input id="quantity" type="number" class="form-control text-center" value="1" min="0" max="99">
                                    </td>
                                    <td id="subtotal" data-th="Subtotal" class="text-center" value="11.99">33</td>
                                    <td class="actions" data-th="">
                                        <button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
                                        <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>
                                    </td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr class="visible-xs">
                                    <td class="text-center"><strong>Total 11.99</strong></td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="hidden-xs"></td>
                                    <td class="hidden-xs text-center"><strong>Total $11.99</strong></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <button id="activate-step-2" class="btn btn-primary btn-lg">Proceed to Seat Selection</button>
                </div>
            </div>
        </div>


        <div class="row setup-content" id="step-2">
            <div class="col-xs-12">
                <div class="col-md-12 well text-center">
                    <h1 class="text-center"> STEP 2: Seating</h1>

                    <div class="theater">
                        <div class="screen">
                            <h1>Please select a seat</h1>
                        </div>
                        <div class="exit exit--front room">

                        </div>
                        <ol class="cabin room">
                            <li class="row row--1">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" id="1A" />
                                        <label for="1A">1A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="1B" />
                                        <label for="1B">1B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="1C" />
                                        <label for="1C">1C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" disabled id="1D" />
                                        <label for="1D">Occupied</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="1E" />
                                        <label for="1E">1E</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="1F" />
                                        <label for="1F">1F</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--2">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" id="2A" />
                                        <label for="2A">2A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="2B" />
                                        <label for="2B">2B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="2C" />
                                        <label for="2C">2C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="2D" />
                                        <label for="2D">2D</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="2E" />
                                        <label for="2E">2E</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="2F" />
                                        <label for="2F">2F</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--3">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" id="3A" />
                                        <label for="3A">3A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="3B" />
                                        <label for="3B">3B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="3C" />
                                        <label for="3C">3C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="3D" />
                                        <label for="3D">3D</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="3E" />
                                        <label for="3E">3E</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="3F" />
                                        <label for="3F">3F</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--4">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" id="4A" />
                                        <label for="4A">4A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="4B" />
                                        <label for="4B">4B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="4C" />
                                        <label for="4C">4C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="4D" />
                                        <label for="4D">4D</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="4E" />
                                        <label for="4E">4E</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="4F" />
                                        <label for="4F">4F</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--5">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" id="5A" />
                                        <label for="5A">5A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="5B" />
                                        <label for="5B">5B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="5C" />
                                        <label for="5C">5C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="5D" />
                                        <label for="5D">5D</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="5E" />
                                        <label for="5E">5E</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="5F" />
                                        <label for="5F">5F</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--6">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" id="6A" />
                                        <label for="6A">6A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="6B" />
                                        <label for="6B">6B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="6C" />
                                        <label for="6C">6C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="6D" />
                                        <label for="6D">6D</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="6E" />
                                        <label for="6E">6E</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="6F" />
                                        <label for="6F">6F</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--7">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" id="7A" />
                                        <label for="7A">7A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="7B" />
                                        <label for="7B">7B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="7C" />
                                        <label for="7C">7C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="7D" />
                                        <label for="7D">7D</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="7E" />
                                        <label for="7E">7E</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="7F" />
                                        <label for="7F">7F</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--8">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" id="8A" />
                                        <label for="8A">8A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="8B" />
                                        <label for="8B">8B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="8C" />
                                        <label for="8C">8C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="8D" />
                                        <label for="8D">8D</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="8E" />
                                        <label for="8E">8E</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="8F" />
                                        <label for="8F">8F</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--9">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" id="9A" />
                                        <label for="9A">9A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="9B" />
                                        <label for="9B">9B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="9C" />
                                        <label for="9C">9C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="9D" />
                                        <label for="9D">9D</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="9E" />
                                        <label for="9E">9E</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="9F" />
                                        <label for="9F">9F</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--10">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" id="10A" />
                                        <label for="10A">10A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="10B" />
                                        <label for="10B">10B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="10C" />
                                        <label for="10C">10C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="10D" />
                                        <label for="10D">10D</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="10E" />
                                        <label for="10E">10E</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" id="10F" />
                                        <label for="10F">10F</label>
                                    </li>
                                </ol>
                            </li>
                        </ol>
                        <div class="exit exit--back room">

                        </div>
                    </div>

                    <button id="activate-step-3" class="btn btn-primary btn-lg">Proceed to Payment</button>
                </div>
            </div>
        </div>
        <div class="row setup-content" id="step-3">
            <div class="col-xs-12">
                <div class="col-md-12 well">
                    <h1 class="text-center">STEP 3: Ticket Purchase</h1>


                    <div class="row">
                        <div class="col-md-4 col-md-offset-4">
                            <!-- CREDIT CARD FORM STARTS HERE -->
                            <div class="panel panel-default credit-card-box">
                                <div class="panel-heading display-table">
                                    <div class="row display-tr">
                                        <h3 class="panel-title display-td">Payment Details</h3>
                                        <div class="display-td">
                                            <img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <form role="form" id="payment-form" method="POST" action="javascript:void(0);">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <div class="form-group">
                                                    <label for="cardNumber">CARD NUMBER</label>
                                                    <div class="input-group">
                                                        <input type="tel" class="form-control" name="cardNumber" placeholder="Valid Card Number" autocomplete="cc-number" required autofocus />
                                                        <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-7 col-md-7">
                                                <div class="form-group">
                                                    <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                                    <input type="tel" class="form-control" name="cardExpiry" placeholder="MM / YY" autocomplete="cc-exp" required />
                                                </div>
                                            </div>
                                            <div class="col-xs-5 col-md-5 pull-right">
                                                <div class="form-group">
                                                    <label for="cardCVC">CV CODE</label>
                                                    <input type="tel" class="form-control" name="cardCVC" placeholder="CVC" autocomplete="cc-csc" required />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <div class="form-group">
                                                    <label for="couponCode">COUPON CODE</label>
                                                    <input type="text" class="form-control" name="couponCode" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <button class="subscribe btn btn-success btn-lg btn-block" type="button" onclick="alert('Ticket Purchased.'); window.location.href = './index.jsp';">Purchase Ticket</button>
                                            </div>
                                        </div>
                                        <div class="row" style="display:none;">
                                            <div class="col-xs-12">
                                                <p class="payment-errors"></p>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- CREDIT CARD FORM ENDS HERE -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/resources/js/checkout.js"></script>

</html>
