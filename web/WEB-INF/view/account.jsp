<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
	<title>Firdango</title>
	<meta charset="utf-8">

	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

	<!--
    Font Scheme

    Logo (Branding): Roboto
    Movie Titles: Maven Pro
    Primary Texts: Raleway
    Secondary Texts: Josefin Sans
    -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:300|Roboto|Maven+Pro|Josefin+Sans:300,400" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <link href="/resources/css/index.css" rel="stylesheet">
    <link href="/resources/css/account.css" rel="stylesheet">
</head>

<body>
	<jsp:include page="/WEB-INF/includes/header.jsp" />

	<div class="container">
		<div class="row main">
			<div class="main-login main-center">
                <div class="alert alert-info" role="alert">
                    <strong>Account Balance: </strong>
                    <fmt:formatNumber
                        value="${user.balance}"
                        type="currency"/>
                </div>

                <hr>
                <h5>Change Name Or Email</h5>
				<form action="changeNameEmail" modelAttribute="user" method="post">
					<div class="form-group">
						<label for="firstName" class="cols-sm-2 control-label">First Name</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
								<input value="${user.firstName}" id="firstName" name="firstName" placeholder="Enter your first name" class="form-control" type="text" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="lastName" class="cols-sm-2 control-label">Last Name</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
								<input value="${user.lastName}" id="lastName" name="lastName" placeholder="Enter your last name" class="form-control" type="text" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="email" class="cols-sm-2 control-label">Email</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
								<input value="${user.email}" id="email" name="email" placeholder="Enter your email" class="form-control" type="email" />
							</div>
						</div>
					</div>

					<div class="form-group ">
						<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Save"/>
					</div>
				</form>

				<form action="changePassword" modelAttribute="user" method="post">
					<hr>
					<h5>Change Password</h5>
					<div class="form-group">
						<label for="oldPassword" class="cols-sm-2 control-label">Old Password</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
								<input id="oldPassword" name="oldPassword" placeholder="Enter your old password" class="form-control" type="password"/>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">Password</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
								<input id="password" name="password" placeholder="Enter your new password" class="form-control" type="password"/>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="passwordValidate" class="cols-sm-2 control-label">Confirm Password</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
								<input id="passwordValidate" name="passwordValidate" placeholder="Enter your password again" class="form-control" type="password"/>
							</div>
						</div>
					</div>

					<div class="form-group">
						<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Save"/>
					</div>
				</form>

				<form action="receiveNewsletter" modelAttribute="user" method="post">
					<hr>
					<h5>Receive Newsletter</h5>
					<div class="form-check">
						<label class="form-check-label">
							<input class="form-check-input" type="checkbox" ${user.receiveNewsletter == 1 ? 'checked' : ''} name="receiveNewsletter">
							I would like to receive promotional emails from Firdango.
						</label>
					</div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Save"/>
                    </div>
				</form>

                <form action="/redeemGiftCard" modelAttribute="user" method="post">
                    <div class="form-group">
                        <label for="code" class="cols-sm-2 control-label">Redeem Gift Card</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <input id="code" name="code" placeholder="Enter your gift card code" class="form-control" type="text" />
                            </div>
                        </div>
                    </div>

                    <div class="form-group ">
                        <input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Save"/>
                    </div>
                </form>
			</div>
		</div>
	</div>
    <jsp:include page="/WEB-INF/includes/footer.jsp" />
</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="index.js"></script>

</html>
