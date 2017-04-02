class Answer < ApplicationRecord
  belongs_to :question

  enum languages: [:css, :javascript, :ruby, :sql]
end
