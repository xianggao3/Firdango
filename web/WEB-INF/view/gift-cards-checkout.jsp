<%--
  Created by IntelliJ IDEA.
  User: marvinyan
  Date: 5/13/2017
  Time: 11:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Gift Cards Checkout</title>
    <meta charset="utf-8">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300|Roboto|Maven+Pro|Josefin+Sans:300,400" rel="stylesheet">
</head>
<body>
<div class="container">
    <h1>Customize Your Gift Card</h1>

    <h2>Design</h2>
    <img src="/resources/img/card_${design}.png" alt="">

    <form action="/gift-cards/generateCard" method="post">
        <h2>Amount</h2>
        <div class="btn-group" data-toggle="buttons">
            <label class="btn btn-primary active">
                <input type="radio" name="amount" value="50" autocomplete="off" checked> $50.00
            </label>
            <label class="btn btn-primary">
                <input type="radio" name="amount" value="25" autocomplete="off"> $25.00
            </label>
            <label class="btn btn-primary">
                <input type="radio" name="amount" value="15" autocomplete="off"> $15.00
            </label>
            <label class="btn btn-primary">
                <input type="radio" name="amount" value="100" autocomplete="off"> $100.00
            </label>
        </div>
        <hr>
        <div class="form-group">
            <label for="quantity">Quantity</label>
            <select class="form-control" name="quantity" id="quantity">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
            </select>
        </div>
        <hr>
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <fieldset>
                    <legend>Credit Card Payment</legend>
                    <div class="form-group">
                        <label for="cc_name">Full Name</label>
                        <input type="text" class="form-control" id="cc_name" required>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-12">Card Number</label>
                        <div class="col-md-12">
                            <input type="text" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-12">Card Expiry Date</label>
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
                            <input type="text" class="form-control" title="Three digits on the back of your card" required>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</html>
