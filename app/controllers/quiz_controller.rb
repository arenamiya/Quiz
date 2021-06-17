class QuizController < ApplicationController

    def index
        @length = 4
        @alphabet = ("a".."z").to_a
        questions = JSON.parse(File.read('quiz.json'))
        @questions = questions.sample(@length)
        session[:length] = @length
    end
    
    def submit
        score = 0
        questions = JSON.parse(File.read('quiz.json'))

        params.each do |answer|
            if answer.include? "question_"
                a = params[answer] + "_correct"
                questions.each do |q|
                    if q['id'] == answer.from(9).to_i
                        if q["correct_answers"][a] == "true"
                            score += 1
                        end
                        break
                    end
                end
            end
        end

        session[:score] = score
        redirect_to :complete
    end

end
