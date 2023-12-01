<!DOCTYPE html>
<html>
  <head lang="en-AU">
    <title>Question 1</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googlefonts.cn/css?family=Modern+Antiqua|Poppins|Arapey" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  </head>

  <body class="BODY">

        
    <div class="question_title">
        <p><strong>Question 1 / 3</strong></p>
    </div>
 
    <div class="question_box">
      <!-- <p>You must keep <strong>at least</strong> ____ between you and the back 
        <span>of a vehicle when you follow that vehicle for over 200m.</span></p> -->
      <p><?php echo $quiz_question ?></p>
    </div>

    <br><br>

    <div class="grid2x2">
      <button class="box1" onclick="clickbox1()">
        <div class="answer_text"><?php echo $quiz_wrong_ans1 ?></div>
      </button>

      <button class="box2">
        <div class="answer_text"><?php echo $quiz_wrong_ans2 ?></div>
      </button>

      <button class="box3">
            <div class="answer_text"><?php echo $quiz_correct_ans ?></div>
      </button>

      <button class="box4">
        <div class="answer_text"><?php echo $quiz_wrong_ans3 ?></div>
      </button>
    </div>


    <div class="quiz-buttons">
      <a href="how_to_play.html"><button>Back</button></a>
      <a href="<?php echo base_url(); ?>play/quiz2"><button>Next</button></a>
    </div>
  </body>

  <script src="<?php echo base_url(); ?>assets/js/script2.js"></script>

</html>