<!DOCTYPE html>
<html>
  <head lang="en-AU">
    <title>Achievements</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googlefonts.cn/css?family=Roboto:700|Bree+Serif|Modern+Antiqua|Poppins" rel="stylesheet">
  </head>

  <body class="BODY">
    

   
    
    <!-- combined the prize page with the achievement page -->

    <p class="notice"><strong>Claim a prize</strong></p>

    <div class="grid2x6">
      <button class="prize-box1"><div>bottle</div></button>
      <button class="prize-box2"><div>Bike helmet</div></button>
      <button class="prize-box3"><div>Sunscreen</div></button>
      <button class="prize-box4"><div>Sunglasses</div></button>
      <button class="prize-box5"><div>Bike tyre replacement</div></button>
      <button class="prize-box6"><div>Bike chain replacement</div></button>
    </div>

    <!-- Prizes are arbitrary right now, consider what would be good later -->

    <div class="notice">
      <p><strong>Claim your prize</strong></p>
    </div>

    <div class="notice_picture">
      <img src="<?php echo base_url(); ?>assets/images/bike1.png">
    </div>
    
    <div class="question_anwers">
      <p><strong>Deliver to</strong></p>
    </div>

      <div class="deliver-box">
        <input type="text" name="address1" placeholder="Your address..">
      <br>
        <input type="text" name="address2" placeholder="Your address..">
      <br>
        <input type="text" name="address3" placeholder="Your address..">
      </div>
    <br><br>

    <div class="quiz-buttons">
      <a href="<?php echo base_url(); ?>welcome"><button>Back</button></a>
      <a href="<?php echo base_url(); ?>play/confirm"><button>Confirm</button></a>
    </div>
  </body>
</html>