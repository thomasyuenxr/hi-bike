<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="<?php echo base_url(); ?>assets/css/styles.css" rel="stylesheet">
  <script defer src="<?php echo base_url(); ?>assets/js/script1.js"></script>
  <title>Quiz App</title>
</head>
<body>
  <div class="container">
    <div id="question-container" class="hide">
      <div id="question">Question</div>
      <div id="answer-buttons" class="btn-grid">
        <button class="btn">Answer 1</button>
        <button class="btn">Answer 2</button>
        <button class="btn">Answer 3</button>
        <button class="btn">Answer 4</button>
      </div>
    </div>
    <div class="controls">
      <button id="start-btn" class="start-btn btn">Start</button>
      <button id="next-btn" class="next-btn btn hide">Next</button>
      <a id="finish-button" class="finish-btn btn hide" href="<?php echo base_url(); ?>play/result">Finish</a>
    </div>
  </div>
</body>
</html>