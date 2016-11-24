class Host < ActiveRecord::Base
  belongs_to :os_release
  attr_accessible :fqdn, :id, :os_release
end
