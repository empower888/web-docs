function Quiz(questions) {
    this.score = 0;
    this.questions = questions;
    this.questionIndex = 0;
}
 
Quiz.prototype.getQuestionIndex = function() {
    return this.questions[this.questionIndex];
}
 
Quiz.prototype.guess12 = function(id,answer) {
	
	var btn=document.getElementById(id).style
    if(this.getQuestionIndex().isCorrectAnswer(answer)) {
		
		btn.backgroundColor="green";
        this.score++;
	    this.questionIndex++;
    }
	else
	{
		btn.backgroundColor="red";
	}
 
    //this.questionIndex++;
}
 
Quiz.prototype.isEnded = function() {
    return this.questionIndex === this.questions.length;
}
 
 
function Question(text, choices, answer) {
    this.text = text;
    this.choices = choices;
    this.answer = answer;
}
 
Question.prototype.isCorrectAnswer = function(choice) {
	    return this.answer === choice;
}
 
 
function populate() {
	
    if(quiz.isEnded()) {
        showScores();
    }
    else {
		
        // show question
		//var qi=this.questionIndex;
		//alert(qi);
        var element = document.getElementById("question");
        element.innerHTML = quiz.getQuestionIndex().text;
		//alert(quiz.getQuestionIndex().text);
        // show options
        var choices = quiz.getQuestionIndex().choices;
		//alert(choices);
        for(var i = 0; i < choices.length; i++) {
            var element = document.getElementById("choice" + i);
			//alert(element.style);
			 var btn="btn"+i;
			 //var btn=;
			// btn.backgroundColor="#01BBFF";
			//color=bt.style.backgroundColor;
			//alert(color)
            element.innerHTML = choices[i];
			document.getElementById(btn).style.backgroundColor="#01BBFF";
            guess("btn" + i, choices[i]);
        }
		
        showProgress();
		
    }
};
 
function guess(id, guess1) {
	
    var button = document.getElementById(id);
	
	
	button.onclick = function() {
		
		//alert(button.style.backgroundColor);
        quiz.guess12(id,guess1);
		
		
       
		//
    }
};
function next() {
	 populate();
}
 
function showProgress() {
    var currentQuestionNumber = quiz.questionIndex + 1;
    var element = document.getElementById("progress");
    element.innerHTML = "Question " + currentQuestionNumber + " of " + quiz.questions.length;
};
 
function showScores() {
    var gameOverHTML = "<h1>Result</h1>";
    gameOverHTML += "<h2 id='score'> Your scores: " + quiz.score + "</h2>";
    var element = document.getElementById("quiz");
    element.innerHTML = gameOverHTML;
};
 
// create questions here
var questions = [
    new Question("Hyper Text Markup Language Stand For?", ["JavaScript", "XHTML","CSS", "HTML"], "HTML"),
    new Question("Which language is used for styling web pages?", ["HTML", "JQuery", "CSS", "XML"], "CSS"),
    new Question("Which is not a JavaScript Framework?", ["Python Script", "JQuery","Django", "NodeJS"], "Django"),
    new Question("Which is used for Connect To Database?", ["PHP", "HTML", "JS", "All"], "PHP"),
    new Question("This Internship is about..", ["Web Design", "Graphic Design", "SEO & Development", "All"], "Web Design")
];
 
// create quiz
var quiz = new Quiz(questions);
 
// display quiz
populate();