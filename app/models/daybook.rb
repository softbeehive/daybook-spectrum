class Daybook < ActiveRecord::Base
  attr_accessible :name, :logo
  has_attached_file :logo, :styles => { :thumb => "100x100>" }

  validates :name, :presence => true,
                   :length   => { :maximum => 50 }
  validates :logo, :presence => true

end
