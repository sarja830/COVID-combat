<!DOCTYPE html>
<html lang="en">
<head>
<%
 String m1="";
 String m2="";
%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>CORONA WARRIORS</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="startup.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

	
	
<!-- OLD NAVBAR  -->
   <nav class="navbar navbar-fixed-top navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">CORONA WARRIORS</a>
            </div>
            
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="">Home</a></li>
                    <li><a href="https://www.mygov.in/aarogya-setu-app/">AROGYA SETU</a></li>
                    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Administrator
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="cor_adminreg.jsp?m1=n&m2=n">Sign-up</a>
          <a class="dropdown-item" href="logina.jsp?m1=n&m2=n">login</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="logout.jsp">Log-out</a>
        </div>
      </li>
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Warrior
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="cor_customerreg.jsp?m1=n&m2=n">Sign-up</a>
          <a class="dropdown-item" href="loginc.jsp?m1=n&m2=n">login</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="logout.jsp">Log-out</a>
        </div>
      </li>
                </ul>
            </div>
        </div>
    </nav>
    
     <div class="cover">
        <div class="cover-text">
            <h1></h1>
            <p class="lead"></p>
            
        </div>
    </div>
  
    <section class="testimonial">
        <div class="container">
            <blockquote>
               <div align="center">&ldquo; There are heroes fighting out there fighting for you.</div> 
                <br>
                <div align="center">Do your bit!</div> 
                <br>
                <div align="center">Be a corona warrior &rdquo;</div>
                <br>
             <!--     <cite>&mdash; </cite> -->
            </blockquote>
            <div align="center"><a href="loginc.jsp?m1=n&m2=n" role="button"   class="btn btn-success btn-lg">Be a corona warrior</a></div>
        </div>
    </section>
     <!--    
    <section id="why-us">
        <h2>Why save our nation from this corona pandemic?</h2>
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <h3>Artisanal</h3>
                    <p>Squid synth Marfa, fashion axe readymade whatever four loko aesthetic tote bag tilde. Mustache try-hard skateboard blog, umami ugh gentrify chia trust fund whatever. Church-key leggings small batch Etsy, taxidermy VHS meggings deep v slow-carb 8-bit blog.</p>
                </div>
                <div class="col-sm-4">
                    <h3>Readymade</h3>
                    <p>Squid synth Marfa, fashion axe readymade whatever four loko aesthetic tote bag tilde. Mustache try-hard skateboard blog, umami ugh gentrify chia trust fund whatever. Church-key leggings small batch Etsy, taxidermy VHS meggings deep v slow-carb 8-bit blog.</p>
                </div>
                <div class="col-sm-4">
                    <h3>Small Batches</h3>
                    <p>Squid synth Marfa, fashion axe readymade whatever four loko aesthetic tote bag tilde. Mustache try-hard skateboard blog, umami ugh gentrify chia trust fund whatever. Church-key leggings small batch Etsy, taxidermy VHS meggings deep v slow-carb 8-bit blog.</p>
                </div>
            </div>
        </div>
    </section>

    <section id="team">
        <div class="container">
            <h2>Meet our team</h2>
            <div class="row">
                <div class="col-sm-3">
                    <img src="img/dp.jpeg" width="160" height="160" alt="Woman's face" class="img-circle">
                    <h4>Sarthak jain</h4>
                    <p>Passionate techie</p>
                </div>
                <div class="col-sm-3">
                   <img src="img/dp.jpeg" width="160" height="160" alt="Woman's face" class="img-circle">
                    <h4>Sarthak jain</h4>
                    <p>Passionate techie</p>
                </div>
                <div class="col-sm-3">
                   <img src="img/dp.jpeg" width="160" height="160" alt="Woman's face" class="img-circle">
                    <h4>Sarthak jain</h4>
                    <p>Passionate techie</p>
                </div>
                <div class="col-sm-3">
                   <img src="img/dp.jpeg" width="160" height="160" alt="Woman's face" class="img-circle">
                    <h4>Sarthak jain</h4>
                    <p>Passionate techie</p>
                </div>
            </div>
        </div>
    </section>
     
    <div class="postcode-input">
    
    <button type="submit"></button>
</div>
   
    <section id="signup">
        <div class="container">
            <h2>Get our handcrafted newsletter</h2>
            <p class="lead">Seriously, we'll send you real paper in the mail. We don't do email.</p>
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <form>
                        <div class="input-group">
                            <input type="text" class="form-control input-lg" placeholder="Put your real address in here...">
                            <span class="input-group-btn">
                                <button class="btn btn-warning btn-lg" type="button">Handcraft it</button>
                            </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    
    <footer>
        crafted with &hearts by <a href="">sarthak</a>
    </footer>
     -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>




















