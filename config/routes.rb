Rails.application.routes.draw do

	root "home#index"
	
	get 'about', to: "about#index"
	
	# Questions
	get 'questions', to: 'questions#index', as: :questions
	get 'questions/new', to: 'questions#new'
	get 'questions/:id', to: 'questions#show', as: :show_questions
	post 'questions', to: 'questions#create', as: :create_questions

	# Answers
	get 'questions/:id/answer', to: 'answers#new'
	post 'questions/:id/answer', to: 'answers#create', as: :create_answers
end
