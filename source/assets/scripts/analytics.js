// Google Analytics
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-XXXX-Y', 'auto');
  ga('require', 'displayfeatures');
  ga('send', 'pageview');

  // Adjusted Bounce Rate From http://www.quickonlinetips.com/archives/2014/08/adjusted-bounce-rate-in-universal-google-analytics/
  setTimeout("ga('send','event','adjusted bounce rate','page visit 15 seconds or more')",15000);
