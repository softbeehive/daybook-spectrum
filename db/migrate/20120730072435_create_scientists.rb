class CreateScientists < ActiveRecord::Migration
  def change
    create_table :scientists do |t|
      t.string :title
      t.date :date
      t.string :description

      t.timestamps
    end
  end
end
