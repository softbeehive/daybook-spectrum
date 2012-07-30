class Membership < ActiveRecord::Base
  belongs_to :daybook
  belongs_to :scientist
end