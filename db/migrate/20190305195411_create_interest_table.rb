class CreateInterestTable < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |table|
      table.belongs_to :senior, :friend, :hobby
    end
  end
end
