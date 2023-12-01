<!DOCTYPE html>
<html>
  <head lang="en-AU">
    <title>Congratulations!</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/stylesheet.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googlefonts.cn/css?family=Modern+Antiqua|Poppins|Arapey" rel="stylesheet">
  </head>

  <body class="BODY">
    <div class="Menu">
      
    </div>
      <p class="congrats"><strong>Congratulations!</strong></p>
      <p class="notice">You completed this challenge!</p> 

    <div class="notice_picture">
      <img src="<?php echo base_url(); ?>assets/images/congrauadtion_logo.png">
    </div>
    

    <div id="question-and-answer">
      <h1>The Questions and Correct Answers You Have Learned </h1>
      <!-- load Q&A -->
      <?php 
                foreach ($all_quiz as $single_quiz)
                {
                  echo '<h3 style="color:#6c757d">'.$single_quiz->question.'</h3>';
                  echo '<h4>'.$single_quiz->correct_ans.'</h4>';
                  echo '<br>';
                };
      ?>

      <div id="question1"></div>
      <div id="question2"></div>
      <div id="question3"></div>
    </div>

    <div class="allcorrect-buttons">
      <button>
      <a href="<?php echo base_url(); ?>welcome">Go to Home</a>
      </button>

      <button>
      <a href="<?php echo base_url(); ?>play/achievement">Go to Achievements</a>
      </button>
    </div>
    
</body>
</html>