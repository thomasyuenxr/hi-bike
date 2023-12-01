<html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bike Quiz</title>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/style.css">
    <link href="https://fonts.googlefonts.cn/css?family=Modern+Antiqua|Poppins|Arapey" rel="stylesheet">
</head>
<body class="BODY">
    <div class="Menu">
        <navigation>

          <a href="<?php echo base_url(); ?>welcome">Home</a>

          <a href="<?php echo base_url(); ?>play/achievement">Achievements and prizes</a>

          <a href="<?php echo base_url(); ?>play/contact">Contact Us</a>

          <a href="<?php echo base_url(); ?>play/about">About</a>

          <a href="<?php echo base_url(); ?>play/reference">Reference</a>


            <?php if(!$this->session->userdata('logged_in')) : ?>

                        <a href="<?php echo base_url(); ?>login"> LOGIN  </a>
                        <a href="<?php echo base_url(); ?>register"> REGISTER </a>

                
            <?php endif; ?>
            
            <?php if($this->session->userdata('logged_in')) : ?>

                    <a href="<?php echo base_url(); ?>login/logout"> LOGOUT </a>

            <?php endif; ?>
        </navigation>

        
    </div>



</body>
</html>