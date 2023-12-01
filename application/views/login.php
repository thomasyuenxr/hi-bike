

<body class="BODY">

      <div class="mainbody middle">

	  <?php echo form_open(base_url().'login/check_login'); ?>

        <form class="form-box front">
          <div>
            <h1 class="R-hi">Login</h1>
          </div>

          <div>
            
		  <input type="text" class="input-normal" placeholder="email" required="required" name="email" id="email">

		  <input type="password" class="input-normal" placeholder="Password" required="required" name="password">
		  <?php echo $error; ?>
            <button class="btn-submit" type="submit">
             Login
            </button></form>
			<?php echo form_close(); ?>


			<br>
			
			<a href="<?php echo base_url(); ?>register" class="btn-submit"> REGISTER </a>
          </div>
         </div>
    
</body>