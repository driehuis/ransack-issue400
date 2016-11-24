ActiveRecord::Schema.define do
  create_table "hosts", :force => true do |t|
    t.string   "fqdn"
    t.integer  "os_release_id"
  end

  create_table "os_releases", :force => true do |t|
    t.string   "name"
  end
end
