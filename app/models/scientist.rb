class Scientist < ActiveRecord::Base

  has_many :memberships
  has_many :daybooks, :through => :memberships

  attr_accessible :date, :description, :title
end
