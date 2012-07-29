class CreateDaybooks < ActiveRecord::Migration
  def change
    create_table :daybooks do |t|
      t.string :name

      t.timestamps
    end
  end
end
