class ChangeTitleColumnInQuesitonsTable < ActiveRecord::Migration[5.0]
  def change
  	change_column :questions, :title, :text
  end
end
