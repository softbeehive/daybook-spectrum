class AddAttachmentLogoToDaybooks < ActiveRecord::Migration
  def self.up
    change_table :daybooks do |t|
      t.has_attached_file :logo
    end
  end

  def self.down
    drop_attached_file :daybooks, :logo
  end
end
