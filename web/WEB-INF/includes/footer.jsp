<div id="offersDiv" class="container">
    <h1 class="display-5 text-white">Special Offers</h1>

    <div class="card-group">
        <div class="card card-inverse">
            <img class="card-img-top" src="https://images.fandango.com/r103.4//images/spotlight/fd_ShackSong_300x150_offerstrip_v1.png" alt="Card image cap">
            <div class="card-block">
                <h4 class="card-title">'The Shack' Gift With Purchase</h4>
                <p class="card-text">Buy tickets and get a free song download.</p>
            </div>
            <div class="card-footer">
                <a href="/gift-cards" class="card-text"><small class="text-primary">Buy Tickets</small></a>
            </div>
        </div>
        <div class="card card-inverse">
            <img class="card-img-top" src="https://images.fandango.com/r103.4//images/spotlight/fd_VIP_300x150_offerstrip_v11.png" alt="Card image cap">
            <div class="card-block">
                <h4 class="card-title">Firdango VIP</h4>
                <p class="card-text">Change of plans? No sweat. Refund or exchange your tickets as a Firdango VIP.</p>
            </div>
            <div class="card-footer">
                <a href="/signup" class="card-text"><small class="text-primary">Join Now For Free</small></a>
            </div>
        </div>
        <div class="card card-inverse">
            <img class="card-img-top" src="https://images.fandango.com/r103.4//images/spotlight/fd_LEGOBAT_300x150_offerstrip_v1.png" alt="Card image cap">
            <div class="card-block">
                <h4 class="card-title">'The LEGO Batman Movie' Gift With Purchase</h4>
                <p class="card-text">Buy tickets to 'The LEGO Batman Movie' and get 50% off a digital copy of 'The LEGO Movie' on FirdangoNOW.</p>
            </div>
            <div class="card-footer">
                <a href="#" class="card-text"><small class="text-primary">Buy Tickets</small></a>
            </div>
        </div>
        <div class="card card-inverse">
            <img class="card-img-top" src="https://images.fandango.com/r103.4//images/spotlight/PromoUnit_300x15012.png" alt="Card image cap">
            <div class="card-block">
                <h4 class="card-title">Firdango Movie Gift Cards</h4>
                <p class="card-text">Give the gift of movies. Get your Firdango Movie Gift Card now.</p>
            </div>
            <div class="card-footer">
                <a href="/gift-cards" class="card-text"><small class="text-primary">Buy Gift Cards</small></a>
            </div>
        </div>
    </div>
</div>
<!-- end offersDiv -->

<!-- Email Subscription Form -->
<div class="container">
    <section class="home-newsletter">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="single">
                        <h2>Subscribe to our Newsletter</h2>
                        <form action="signupFromNewsletter" modelAttribute="user" method="post">
                            <div class="input-group">
                                <input type="email" class="form-control" placeholder="Enter your email" name="subscribeEmail">
                                <span class="input-group-btn">
                                        <button class="btn btn-theme" type="submit">Subscribe</button>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- Google Ads-->
<div id="adsenseDiv" class="container">
    <center class="adsense-margin">
        <jsp:include page="/WEB-INF/includes/banner-ad.jsp" />
    </center>
</div>
<!-- end Google Ads -->

<!-- Footer -->
<div id="footer">
    <div class="container">
        <!-- Primary footer -->
        <div class="row">
            <div class="col-sm-3">
                <div class="foot-header">
                    EXPERIENCE + EXPLORE
                </div>
                <div class="foot-links">
                    <a href="#">Movies in Theaters</a>
                    <a href="#">Movie Actors and Actresses</a>
                    <a href="#">Mobile</a>
                    <a href="#">New DVD Releases</a>
                    <a href="#">Special Offers</a>
                    <a href="#">Gift Cards</a>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="foot-header">EDITORIAL FEATURES</div>
                <div class="foot-links">
                    <a href="#">Family</a>
                    <a href="#">Indie Movie Guide</a>
                    <a href="#">Movie News</a>
                    <a href="#">Awards Watch</a>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="foot-header">
                    VIDEOS
                </div>
                <div class="foot-links">
                    <a href="#">Movie Trailers</a>
                    <a href="#">Frontrunners</a>
                    <a href="#">Weekend Ticket</a>
                    <a href="#">Mom's Movie Minute</a>
                    <a href="#">Reel Kids</a>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="foot-header">
                    SOCIAL MEDIA
                </div>
                <div class="foot-links">
                    <a href="#"><i class="fa fa-facebook-official fa-lg" aria-hidden="true"></i> Facebook</a>
                    <a href="#"><i class="fa fa-twitter-square fa-lg" aria-hidden="true"></i> Twitter</a>
                    <a href="#"><i class="fa fa-instagram fa-lg" aria-hidden="true"></i> Instagram</a>
                    <a href="#"><i class="fa fa-youtube fa-lg" aria-hidden="true"></i> YouTube</a>
                    <a href="#"><i class="fa fa-google-plus-official fa-lg" aria-hidden="true"></i> Google Plus</a>
                </div>
            </div>
        </div>

        <!-- Alt footer -->
        <div class="row">
            <img id="footer-landmarks" src="../../resources/img/footer-landmarks.png">

            <div id="bottom-footer">
                <div class="row">
                    <div class="col-md-8">
                        <a href="#">About Us</a>
                        <a href="#">Careers</a>
                        <a href="#">Advertising</a>
                        <a href="#">Affiliate Program</a>
                        <a href="#">Loyalty Program</a>
                        <a href="#">Privacy Policy</a>
                        <a href="https://firdango.zendesk.com/hc/en-us">Support</a>
                    </div>
                    <div class="col-md-4 phone">
                        <div class="pull-left">
                            <i class="fa fa-phone" aria-hidden="true"></i>
                            <span class="red">(800) 555-1111<small>24/7 Customer Support</small></span>
                        </div>
                        <div class="pull-right">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                            <span class="red">Support@Firdango<small>Send Us An Email!</small></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <center class="copyright">&copy; 2017 Firdango. All rights reserved.</center>
    </div>
</div>
<!-- Start of firdango Zendesk Widget script -->
<script>
    /*<![CDATA[*/
    window.zEmbed || function(e, t) {
        var n, o, d, i, s, a = [],
            r = document.createElement("iframe");
        window.zEmbed = function() {
            a.push(arguments)
        }, window.zE = window.zE || window.zEmbed, r.src = "javascript:false", r.title = "", r.role = "presentation", (r.frameElement || r).style.cssText = "display: none", d = document.getElementsByTagName("script"), d = d[d.length - 1], d.parentNode.insertBefore(r, d), i = r.contentWindow, s = i.document;
        try {
            o = s
        } catch (e) {
            n = document.domain, r.src = 'javascript:var d=document.open();d.domain="' + n + '";void(0);', o = s
        }
        o.open()._l = function() {
            var e = this.createElement("script");
            n && (this.domain = n), e.id = "js-iframe-async", e.src = "https://assets.zendesk.com/embeddable_framework/main.js", this.t = +new Date, this.zendeskHost = "firdango.zendesk.com", this.zEQueue = a, this.body.appendChild(e)
        }, o.write('<body onload="document._l();">'), o.close()
    }();
    /*]]>*/
</script>


<!-- End of firdango Zendesk Widget script -->
<!-- end footer -->