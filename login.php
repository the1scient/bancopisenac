<?php include_once('global.php'); ?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<?php echo ASSETS_URL ?>fonts/icomoon/style.css">

    <link rel="stylesheet" href="<?php echo ASSETS_URL ?>css/owl.carousel.min.css">

    <link rel="shortcut icon" href="dino.png" type="image/x-icon">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    
    <!-- Style -->
    <link rel="stylesheet" href="<?php echo ASSETS_URL ?>css/login.css">

    <title>Login #7</title>
  </head>
  <body>
  

  
  <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="<?php echo ASSETS_URL ?>images/undraw_remotely_2j6y.svg" alt="Image" class="img-fluid">
        </div>
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="mb-4">
              <h3>Log In</h3>
              <p class="mb-4">Entre no banco mais moderno do mundo.</p>
            </div>
            <form action="<?php echo SITE_URL ?>kernel/login.php" method="post">
              <div class="form-group first">
                <label for="username">CPF</label>
                <input type="text" name="cpf" class="form-control" id="cpf">

              </div>
              <div class="form-group last mb-4">
                <label for="password">Senha</label>
                <input type="password" name="password" class="form-control" id="password">
                
              </div>
              
              <div class="d-flex mb-5 align-items-center">
                
                <span class="ml-auto"><a href="#" class="forgot-pass">Esqueceu a senha?</a></span> 
              </div>

              <input type="submit" value="Log In" class="btn btn-block btn-primary">

              
              
            </form>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>

  
    <script src="<?php echo ASSETS_URL ?>js/jquery-3.3.1.min.js"></script>
    <script src="<?php echo ASSETS_URL ?>js/popper.min.js"></script>
    <script src="<?php echo ASSETS_URL ?>js/bootstrap.min.js"></script>
    <script src="<?php echo ASSETS_URL ?>js/main.js"></script>
      <!-- jquery mask cdn -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>
      <script>
        $(document).ready(function(){
          $('#cpf').mask('000.000.000-00');
        });
      </script>


  </body>
</html>