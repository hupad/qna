class QuestionsController < ApplicationController

	def index
		@questions = Question.order('created_at')
	end

	def show
		@answer = Answer.new
		@redcarpet = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
		@question = Question.find(params[:id])
	end

	def	new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		if @question.save
			redirect_to questions_path, notice: "Question has been created successfully."
		else
			render :new
		end
	end


	private
	def question_params
		params.require(:question).permit(:title)
	end
end