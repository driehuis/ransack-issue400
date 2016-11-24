class OsRelease < ActiveRecord::Base
  has_many :hosts
  #default_scope order('name')
  attr_accessible :id, :name
end
