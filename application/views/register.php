<html>
<body>



<div class="mainbody middle">

          <div>
            <h1 class="R-hi">Register</h1>
          </div>
        <form class="form-box front" method="post" action="<?php echo base_url(); ?>register/signup">
            <div>
                
                <input type="text" name="email" class="input-normal" placeholder="Emailadress" id="email" value="<?php echo set_value('email'); ?>" />

                <input type="password" name="password" placeholder="PassWord" class="input-normal" value="<?php echo set_value('password'); ?>" />

                <input type="submit" name="register" value="Register" class="btn-submit" />
            </div>  
        </form>


          

</body>
</html>