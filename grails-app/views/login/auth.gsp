<!DOCTYPE html>
<html lang="en">
  <head>
  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Login</title>

    <asset:stylesheet src="bootstrap.min.css" />
    <!-- bootstrap theme -->
    <asset:stylesheet src="bootstrap-theme.css" />
    <!-- font icon -->
    <asset:stylesheet src="eleganticons/css/elegant-icons-style.css" />
    <asset:stylesheet src="fontawesome/css/font-awesome.min.css" />    
  <!-- Custom styles -->
    <asset:stylesheet src="widgets.css" />
    <asset:stylesheet src="style.css" />
    <asset:stylesheet src="style-responsive.css" />
    <asset:stylesheet src="xcharts.min.css" />  
    <asset:stylesheet src="jquery-ui-1.10.4.min.css" />
    <asset:stylesheet src="switch.css" />
  
  </head>

  <body>
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="container">
        
        <div>
          <section>
            <form action="${createLink(controller:'login', action:'authenticate')}" method="POST" id="loginForm" class="login-form" >
              
        <div class="login-wrap">
            
            <p class="login-img" style="color:#2678BC">Organitzi <i class="icon_lock_alt"></i></p>

              <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>              
                <input type="text" class="form-control" name="username" id="username"  placeholder="Email" autofocus required>
              </div>


              <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>              
                <input type="password" class="form-control" placeholder="Password" name="password" id="password" required />
              </div>
              <div>
                <input class="btn btn-primary btn-lg btn-block" type="submit"  href="index.html" value="Log in">
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <!--<p class="change_link">New to site?
                  <a id="createAccountLink" href="#signup" class="to_register"> Create Account </a>
                </p>-->

                <div class="clearfix">
                  <g:if test="${flash.message}">
                    <br>
                    <g:if test="${flash.message == 'Account created'}">
                      <div id="messageResponse" style="margin-bottom:20px">
                      <div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 alert alert-success">
                    </g:if>
                    <g:else>
                      <div id="messageResponse" style="margin-bottom:20px">
                      <div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 alert alert-danger">
                    </g:else>
                          ${flash.message}
                      </div>
                      <br> <br>
                    </div>
                  </g:if>
                </div>
                <br />
              </div>
            </form>
          </section>
        </div>

      </div>
    </div>
  </body>
</html>
<script>






   


 
</script>


