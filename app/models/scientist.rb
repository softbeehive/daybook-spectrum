class Scientist < ActiveRecord::Base

  has_many :memberships
  has_many :daybooks, :through => :memberships

  attr_accessible :date, :description, :title

  validates :title, :presence => true,
                    :length => {:maximum => 50}
  validates :description, :presence => true
end
