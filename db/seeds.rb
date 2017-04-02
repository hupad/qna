# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dir.glob("#{Rails.root}/tmp/questions/*.txt").each do |file|
	next if file == '.' or file == '..'

	p "********** Loading #{file} into DB. ***********"

	content = File.read(file)
	question = content.split("Answer:")[0]
	answer = content.split("Answer:")[1]

	q = Question.create(title: question)
	a = q.answers.build(text: answer)
	a.save

	p "************ Done loading #{file} into DB. ***************"
end