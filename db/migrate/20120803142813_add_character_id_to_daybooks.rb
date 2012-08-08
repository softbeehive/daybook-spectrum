class AddCharacterIdToDaybooks < ActiveRecord::Migration
  def change
    add_column :daybooks, :character_id, :integer
  end
end
