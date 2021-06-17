class QuizController < ApplicationController

    def index
        @questions = JSON.parse(File.read('quiz.json'))
    end

end
