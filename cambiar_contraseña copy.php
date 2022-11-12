<!DOCTYPE html>
<!-- saved from url=(0077)file:///C:/Users/Ale/Desktop/a/Login%20form%20Bootstrap%204_files/LBwRvv.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  
  

<meta name="apple-mobile-web-app-title" content="CodePen">



<link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">


  <title>CodePen - Login form Bootstrap 4</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <link rel="stylesheet" href="css/bootstrap.min.css">
  
<style>
html,body { 
	height: 100%; 
}

.global-container{
	height:100%;
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: #f5f5f5;
}

form{
	padding-top: 10px;
	font-size: 14px;
	margin-top: 30px;
}

.card-title{ font-weight:300; }

.btn{
	font-size: 14px;
	margin-top:20px;
}


.login-form{ 
	width:330px;
	margin:20px;
}

.sign-up{
	text-align:center;
	padding:20px 0 0;
}

.alert{
	margin-bottom:-30px;
	font-size: 13px;
	margin-top:20px;
}
</style>

  <script>
  window.console = window.console || function(t) {};
</script>

  
  
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


</head>

<body translate="no">
  <div class="global-container">
	<div class="card login-form">
	<div class="card-body">
		<h3 class="card-title text-center">Cambiar contraseña</h3>
		<div class="card-text">
			<!--
			<div class="alert alert-danger alert-dismissible fade show" role="alert">Incorrect username or password.</div> -->
			<form>
				<!-- to error: add class "has-danger" -->
				
                <div class="form-group">
					<label for="exampleInputPassword1">Contraseña anterior</label>
                    <a href="https://cdpn.io/Ihor_Sukhorada/fullpage/LBwRvv#M" style="float:right;font-size:12px;">¿Olvidaste tu contraseña?</a>
					<input type="password" class="form-control form-control-sm" id="exampleInputPassword1">
				</div>

				<div class="form-group">
					<label for="exampleInputPassword1">Contraseña nueva</label>
					
					<input type="password" class="form-control form-control-sm" id="exampleInputPassword1">
				</div>
                <div class="form-group">
					<label for="exampleInputPassword1">Repetir nueva contraseña</label>
				
					<input type="password" class="form-control form-control-sm" id="exampleInputPassword1">
				</div>
				<button type="submit" class="btn btn-primary btn-block">Cambiar</button>
				
				
			</form>
		</div>
	</div>
</div>
</div>
  
  
  
  




 
</body></html>