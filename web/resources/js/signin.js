/**
 * Created by marvinyan on 5/14/2017.
 */
function checkLoginState() {
    FB.getLoginStatus(function(response) {
        statusChangeCallback(response);
    });
}

function statusChangeCallback(response) {
    if (response.status === 'connected')
    {
        console.log("Connected to Facebook");
        FB.api('/me', { locale: 'en_US', fields: 'email' },
            function(response) {
                window.location.href = "/signinBack?email=" + response.email;
            }
        );
    }
}