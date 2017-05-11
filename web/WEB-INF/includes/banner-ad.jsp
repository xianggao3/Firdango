<script type="text/javascript">
    rnd.today=new Date();
    rnd.seed=rnd.today.getTime();

    function rnd() {
        rnd.seed = (rnd.seed*9301+49297) % 233280;
        return rnd.seed/(233280.0);
    };

    function rand(number) {
        var result = Math.ceil(rnd()*number);
        if (!result)result++;
        return result
    };
    var ad_cnt1 = 5;
    var ad1 = rand(ad_cnt1);
    var link1;
    var adBanner1;
    var width1
    var height1
    if (ad1==1) {
        link1="https://0.s3.envato.com/files/117843615/hosting%20banner%20720x90.png";
        adBanner1="https://0.s3.envato.com/files/117843615/hosting%20banner%20720x90.png";
        width1="720";
        height1="90";
        alt1="";
    }
    if (ad1==2) {
        link1="https://dou14x5jx22mo.cloudfront.net/image/31562/ECP-Banner-Ad-720x90_25.jpg";
        adBanner1="https://dou14x5jx22mo.cloudfront.net/image/31562/ECP-Banner-Ad-720x90_25.jpg";
        width1="720";
        height1="90";
        alt1="";
    }
    if (ad1==3) {
        link1="http://blog.travel-culture.com/wp-content/uploads/2008/12/720-x-90.gif";
        adBanner1="http://blog.travel-culture.com/wp-content/uploads/2008/12/720-x-90.gif";
        width1="720";
        height1="90";
        alt1="";
    }
    if (ad1==4) {
        link1="http://topelan.com/assets/ad_image/720x90-11_thumb1_thumb.gif";
        adBanner1="http://topelan.com/assets/ad_image/720x90-11_thumb1_thumb.gif";
        width1="720";
        height1="90";
        alt1="";
    }
    if (ad1==5) {
        link1="http://www.portlandfamily.com/wp-content/uploads/2012/11/121377-Bright-Ideas-KGW-ad-720x90.gif";
        adBanner1="http://www.portlandfamily.com/wp-content/uploads/2012/11/121377-Bright-Ideas-KGW-ad-720x90.gif";
        width1="720";
        height1="90";
        alt1="";
    }
    document.write('<center><a href="' + link1 + '" target="_top">');
    document.write('<img src="' + adBanner1 + '" width=' + width1 + ' height=' + height1 + ' border=0 alt="' + alt1 + '"></a>');
    document.write('</center>');
</script>
