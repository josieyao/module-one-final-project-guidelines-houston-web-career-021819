class CreateSeniorhobbyTable < ActiveRecord::Migration[5.0]
  def change
    create_table :seniorhobbies do |table|
      table.belongs_to :senior, :hobby
    end
  end
end
