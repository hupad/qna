class AnswersController < ApplicationController

	before_action :get_question, only: [:create]
	
	def	new
	end

	def create
		
		@answer = @question.answers.build(answer_params)
		if @answer.save
			redirect_to questions_path, notice: "Submitted an answer successfully."
		else
			render :new
		end
	end

	def show
	end

	private
	
	def answer_params
		params.require(:answer).permit(:text)
	end

	def get_question
		@question = Question.find(params[:id])
	end
end