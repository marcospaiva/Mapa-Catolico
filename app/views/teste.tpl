{* Smarty *}

<!DOCTYPE html "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


<html>
	<head>
                <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
                <title>Google Maps JavaScript API Example</title>

                <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAtyifEzud_MG-24R0knqNRBQybuiquNdW7ZSAdU9XlxXJqRIuExSTYphIUt8KTs6_eNQIwcAZRyz0rA&sensor=true_or_false" type="text/javascript"></script>
                <script type="text/javascript" src="js/mapsload.js"></script>
       	</head>


	<body on onload="initialize()" onunload="GUnload()">

		<div id='container'>
			<div id='geral' align='center'>
                                <div><br>|{$a1}|<br>|{$a2}|<br>|{$a3}|<br>|{$a4}|<br>|{$a5}|<br>|{$a6}|<br></div>
				<div id="menu">
					<br/>
				</div>                          
<div id="googleMap" style="width: 500px; height: 300px"></div>



                         

			</div>
		</div>
	</body>
</html>
