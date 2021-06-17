class QuizController < ApplicationController

    def index
        length = 4
        questions = JSON.parse(File.read('quiz.json'))
        @questions = questions.sample(length)
    end

end
