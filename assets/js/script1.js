const startButton = document.getElementById('start-btn')
const nextButton = document.getElementById('next-btn')

const finishButton = document.getElementById('finish-button')

const questionContainerElement = document.getElementById('question-container')
const questionElement = document.getElementById('question')
const answerButtonsElement = document.getElementById('answer-buttons')

let shuffledQuestions, currentQuestionIndex

startButton.addEventListener('click', startGame)
nextButton.addEventListener('click', () => {
  currentQuestionIndex++
  setNextQuestion()
})

function startGame() {
  startButton.classList.add('hide')
  shuffledQuestions = questions.sort(() => Math.random() - .5)
  currentQuestionIndex = 0
  questionContainerElement.classList.remove('hide')
  setNextQuestion()
}

function setNextQuestion() {
  resetState()
  showQuestion(shuffledQuestions[currentQuestionIndex])
}

function showQuestion(question) {
  questionElement.innerText = question.question
  question.answers.forEach(answer => {
    const button = document.createElement('button')
    button.innerText = answer.text
    button.classList.add('btn')
    if (answer.correct) {
      button.dataset.correct = answer.correct
    }
    button.addEventListener('click', selectAnswer)
    answerButtonsElement.appendChild(button)
  })
}

function resetState() {
  clearStatusClass(document.body)
  nextButton.classList.add('hide')
  while (answerButtonsElement.firstChild) {
    answerButtonsElement.removeChild(answerButtonsElement.firstChild)
  }
}

function selectAnswer(e) {
  const selectedButton = e.target
  const correct = selectedButton.dataset.correct
  setStatusClass(document.body, correct)
  Array.from(answerButtonsElement.children).forEach(button => {
    setStatusClass(button, button.dataset.correct)
  })
  if (shuffledQuestions.length > currentQuestionIndex + 1) {
    nextButton.classList.remove('hide')
  } else {
    // startButton.innerText = 'Restart'
    // startButton.classList.remove('hide')
    finishButton.classList.remove('hide');
  }
}

function setStatusClass(element, correct) {
  clearStatusClass(element)
  if (correct) {
    element.classList.add('correct')
  } else {
    element.classList.add('wrong')
  }
}

function clearStatusClass(element) {
  element.classList.remove('correct')
  element.classList.remove('wrong')
}

const questions = [
  {
    question: 'how to brake on a bike the right way',
    answers: [
      { text: 'both', correct: true },
      { text: 'Push Your Weight Back', correct: false },
      { text: 'Get Low—and Stay Off the Brakes—in Turns', correct: false},
      { text: 'none', correct: false }
    ]
  },
  {
    question: 'for a long road race, which preparation is necessary',
    answers: [
      { text: 'both', correct: true },
      { text: 'salt tablets', correct: false },
      { text: 'banana', correct: false },
      { text: 'None', correct: false }
    ]
  },
  {
    question: 'When you are in group riding',
    answers: [
      { text: 'No grabbing handfuls of brake or fast accelerating, mainly out of corners', correct: false },
      { text: 'both', correct: true },
      { text: 'Always have your hands covering the brakes on the hoods or drops', correct: false },
      { text: 'none', correct: false }
    ]
  },
  
]