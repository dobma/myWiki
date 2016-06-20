<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>%title%</title>
<link href="./image/logo.ico" rel="shortcut icon"/>
<link rel="stylesheet" type="text/css" href="%root_path%style/main.css" />
<link type="text/css" rel="stylesheet" href="%root_path%style/shCore.css"/>
<link type="text/css" rel="stylesheet" href="%root_path%style/shCoreRDark.css"/>
<script type="text/javascript" src="%root_path%js/jquery.js"></script>
<!--For code highlighting-->
<script type="text/javascript" src="%root_path%js/shCore.js"></script>
<script type="text/javascript" src="%root_path%js/shBrushPlain.js"></script>
<script type="text/javascript" src="%root_path%js/shBrushVim.js"></script>
<script type="text/javascript" src="%root_path%js/shBrushBash.js"></script>
<script type="text/javascript" src="%root_path%js/shBrushCss.js"></script>
<script type="text/javascript" src="%root_path%js/shBrushJava.js"></script>
<script type="text/javascript" src="%root_path%js/shBrushJScript.js"></script>
<script type="text/javascript" src="%root_path%js/shBrushPython.js"></script>
<script type="text/javascript" src="%root_path%js/shBrushSql.js"></script>
<script type="text/javascript" src="%root_path%js/shBrushXml.js"></script>

<script type="text/javascript">
$(document).ready(function() {
		SyntaxHighlighter.all();
		if (window.innerWidth >= 460) {
		var toggler = $('<div class="toggler" title="Toggle Table Of Content">Table Of Content</div>');
		toc = $('.toc');
		toc.wrap('<div class="tocWrap">');

		$('.tocWrap').prepend(toggler)
		.delay(500)
		.fadeTo(500, '0.7')
		.hover(function() {
			$(this).stop().fadeTo(300, '0.9');
			}, function() {
			$(this).stop().fadeTo(300, '0.7');
			});

		$('html').keypress(function(e) {
			if (e.shiftKey && (e.charCode || e.keyCode) == '90') {
			e.preventDefault();
			$('div.tocWrap').toggle(200);
			}
			});

		toggler.click(function() {
				$('div.toc').slideToggle(300);
				});
		}

		$("a,h1,h2,h3,h4,h5,h6").filter(function(index){
			return $(this).text()=='!Important!';
				}).addClass("importantMarker");

		

});



</script>
</head>
<body >
<header id="header">
<div id="logo" style="font-size: 22pt;text-align:center;">
<a href="index.html">DobMa's Personal Page</a>
</div>
</header>
<div id="wrap">
<div id="content">
%content%
</div>
</div>
<div id="footer">
<p>
Copyright © 2016 DobMa
</p>
</div>
</body>
</html>
