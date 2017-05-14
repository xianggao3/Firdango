<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
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
        <form action="/charge" method="post">
            <input type="hidden" name="showtimeId" value="${showtimeId}">
            <input type="hidden" name="userId" value="${userId}">
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
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td data-th="Product">
                                            <div class="row">
                                                <div class="col-sm-2 hidden-xs"><img src="https://image.tmdb.org/t/p/w500//${poster}" alt="#" class="img-responsive" /></div>
                                                <div class="col-sm-10">
                                                    <h4 class="nomargin">${title}</h4>
                                                    <p>Adult</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td data-th="Price">$13.99</td>
                                        <td data-th="Quantity">
                                            <input id="aQuantity" name="adultQuant" type="number" class="form-control text-center" value="0" min="0" max="10">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td data-th="Product">
                                            <div class="row">
                                                <div class="col-sm-2 hidden-xs"><img src="https://image.tmdb.org/t/p/w500//${poster}" alt="#" class="img-responsive" /></div>
                                                <div class="col-sm-10">
                                                    <h4 class="nomargin">${title}</h4>
                                                    <p>Child</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td data-th="Price">$10.99</td>
                                        <td data-th="Quantity">
                                            <input id="cQuantity" name="childQuant" type="number" class="form-control text-center" value="0" min="0" max="10">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td data-th="Product">
                                            <div class="row">
                                                <div class="col-sm-2 hidden-xs"><img src="https://image.tmdb.org/t/p/w500//${poster}" alt="#" class="img-responsive" /></div>
                                                <div class="col-sm-10">
                                                    <h4 class="nomargin">${title}</h4>
                                                    <p>Senior</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td data-th="Price">$11.99</td>
                                        <td data-th="Quantity">
                                            <input id="sQuantity" name="seniorQuant" type="number" class="form-control text-center" value="0" min="0" max="10">
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr class="visible-xs">
                                        <td class="text-center"><strong>Total $<span class="total">0.00</span></strong></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="hidden-xs"></td>
                                        <td class="hidden-xs text-center"><strong>Total $<span class="total">0.00</span></strong></td>
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
                                            <input type="checkbox" id="1A" name="seat" value="1A"/>
                                            <label for="1A">1A</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="1B" name="seat" value="1B"/>
                                            <label for="1B">1B</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="1C" name="seat" value="1C"/>
                                            <label for="1C">1C</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="1D" name="seat" value="1D"/>
                                            <label for="1D">1D</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="1E" name="seat" value="1E"/>
                                            <label for="1E">1E</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="1F" name="seat" value="1F"/>
                                            <label for="1F">1F</label>
                                        </li>
                                    </ol>
                                </li>
                                <li class="row row--2">
                                    <ol class="seats" type="A">
                                        <li class="seat">
                                            <input type="checkbox" id="2A" name="seat" value="2A"/>
                                            <label for="2A">2A</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="2B" name="seat" value="2B"/>
                                            <label for="2B">2B</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="2C" name="seat" value="2C"/>
                                            <label for="2C">2C</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="2D" name="seat" value="2D"/>
                                            <label for="2D">2D</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="2E" name="seat" value="2E"/>
                                            <label for="2E">2E</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="2F" name="seat" value="2F"/>
                                            <label for="2F">2F</label>
                                        </li>
                                    </ol>
                                </li>
                                <li class="row row--3">
                                    <ol class="seats" type="A">
                                        <li class="seat">
                                            <input type="checkbox" id="3A" name="seat" value="3A"/>
                                            <label for="3A">3A</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="3B" name="seat" value="3B"/>
                                            <label for="3B">3B</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="3C" name="seat" value="3C"/>
                                            <label for="3C">3C</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="3D" name="seat" value="3D"/>
                                            <label for="3D">3D</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="3E" name="seat" value="3E"/>
                                            <label for="3E">3E</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="3F" name="seat" value="3F"/>
                                            <label for="3F">3F</label>
                                        </li>
                                    </ol>
                                </li>
                                <li class="row row--4">
                                    <ol class="seats" type="A">
                                        <li class="seat">
                                            <input type="checkbox" id="4A" name="seat" value="4A"/>
                                            <label for="4A">4A</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="4B" name="seat" value="4B"/>
                                            <label for="4B">4B</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="4C" name="seat" value="4C"/>
                                            <label for="4C">4C</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="4D" name="seat" value="4D"/>
                                            <label for="4D">4D</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="4E" name="seat" value="4E"/>
                                            <label for="4E">4E</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="4F" name="seat" value="4F"/>
                                            <label for="4F">4F</label>
                                        </li>
                                    </ol>
                                </li>
                                <li class="row row--5">
                                    <ol class="seats" type="A">
                                        <li class="seat">
                                            <input type="checkbox" id="5A" name="seat" value="5A"/>
                                            <label for="5A">5A</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="5B" name="seat" value="5B"/>
                                            <label for="5B">5B</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="5C" name="seat" value="5C"/>
                                            <label for="5C">5C</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="5D" name="seat" value="5D"/>
                                            <label for="5D">5D</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="5E" name="seat" value="5E"/>
                                            <label for="5E">5E</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="5F" name="seat" value="5F"/>
                                            <label for="5F">5F</label>
                                        </li>
                                    </ol>
                                </li>
                                <li class="row row--6">
                                    <ol class="seats" type="A">
                                        <li class="seat">
                                            <input type="checkbox" id="6A" name="seat" value="6A"/>
                                            <label for="6A">6A</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="6B" name="seat" value="6B"/>
                                            <label for="6B">6B</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="6C" name="seat" value="6C"/>
                                            <label for="6C">6C</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="6D" name="seat" value="6D"/>
                                            <label for="6D">6D</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="6E" name="seat" value="6E"/>
                                            <label for="6E">6E</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="6F" name="seat" value="6F"/>
                                            <label for="6F">6F</label>
                                        </li>
                                    </ol>
                                </li>
                                <li class="row row--7">
                                    <ol class="seats" type="A">
                                        <li class="seat">
                                            <input type="checkbox" id="7A" name="seat" value="7A"/>
                                            <label for="7A">7A</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="7B" name="seat" value="7B"/>
                                            <label for="7B">7B</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="7C" name="seat" value="7C"/>
                                            <label for="7C">7C</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="7D" name="seat" value="7D"/>
                                            <label for="7D">7D</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="7E" name="seat" value="7E"/>
                                            <label for="7E">7E</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="7F" name="seat" value="7F"/>
                                            <label for="7F">7F</label>
                                        </li>
                                    </ol>
                                </li>
                                <li class="row row--8">
                                    <ol class="seats" type="A">
                                        <li class="seat">
                                            <input type="checkbox" id="8A" name="seat" value="8A"/>
                                            <label for="8A">8A</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="8B" name="seat" value="8B"/>
                                            <label for="8B">8B</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="8C" name="seat" value="8C"/>
                                            <label for="8C">8C</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="8D" name="seat" value="8D"/>
                                            <label for="8D">8D</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="8E" name="seat" value="8E"/>
                                            <label for="8E">8E</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="8F" name="seat" value="8F"/>
                                            <label for="8F">8F</label>
                                        </li>
                                    </ol>
                                </li>
                                <li class="row row--9">
                                    <ol class="seats" type="A">
                                        <li class="seat">
                                            <input type="checkbox" id="9A" name="seat" value="9A"/>
                                            <label for="9A">9A</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="9B" name="seat" value="9B"/>
                                            <label for="9B">9B</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="9C" name="seat" value="9C"/>
                                            <label for="9C">9C</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="9D" name="seat" value="9D"/>
                                            <label for="9D">9D</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="9E" name="seat" value="9E"/>
                                            <label for="9E">9E</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="9F" name="seat" value="9F"/>
                                            <label for="9F">9F</label>
                                        </li>
                                    </ol>
                                </li>
                                <li class="row row--10">
                                    <ol class="seats" type="A">
                                        <li class="seat">
                                            <input type="checkbox" name="seat" value="10A" id="10A" />
                                            <label for="10A">10A</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" name="seat" value="10B" id="10B" />
                                            <label for="10B">10B</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" name="seat" value="10C" id="10C" />
                                            <label for="10C">10C</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" name="seat" value="10D" id="10D" />
                                            <label for="10D">10D</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" name="seat" value="10E" id="10E" />
                                            <label for="10E">10E</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" name="seat" value="10F" id="10F" />
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
                        <!-- CREDIT CARD FORM STARTS HERE -->
                        <div class="row">
                            <div class="col-sm-6 col-sm-offset-3">
                                <fieldset>
                                    <legend>Credit Card Payment</legend>
                                    <div class="form-group">
                                        <label for="cc_name">Full Name</label>
                                        <input type="text" class="form-control" id="cc_name">
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-12">Card Number</label>
                                        <div class="col-md-12">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-12">Card Expiration Date</label>
                                        <div class="col-md-9">
                                            <select class="form-control" name="cc_exp_mo">
                                                <option value="01">January</option>
                                                <option value="02">February</option>
                                                <option value="03">March</option>
                                                <option value="04">April</option>
                                                <option value="05">May</option>
                                                <option value="06">June</option>
                                                <option value="07">July</option>
                                                <option value="08">August</option>
                                                <option value="09">September</option>
                                                <option value="10">October</option>
                                                <option value="11">November</option>
                                                <option value="12">December</option>
                                            </select>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" name="cc_exp_yr">
                                                <option>2017</option>
                                                <option>2018</option>
                                                <option>2019</option>
                                                <option>2020</option>
                                                <option>2021</option>
                                                <option>2022</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-12">Card CVV</label>
                                        <div class="col-md-3">
                                            <input type="text" class="form-control" title="Three digits on the back of your card">
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                        <center><strong>Total $<span class="total">0.00</span></strong></center>
                        <!-- CREDIT CARD FORM ENDS HERE -->
                    </div>
                </div>
                <center><button type="submit" class="btn btn-primary">Submit</button></center>
            </div>

        </form>
    </div>
</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/resources/js/checkout.js"></script>


</html>
