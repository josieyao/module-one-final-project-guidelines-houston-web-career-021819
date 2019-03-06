class CreateFriendhobbyTable < ActiveRecord::Migration[5.0]
  def change
    create_table :friendhobbies do |table|
      table.belongs_to :friend, :hobby
    end
  end
end
