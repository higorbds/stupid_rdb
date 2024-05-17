require 'puts_utils'

require_relative './lib/fake_sql'
require_relative './lib/database'

db = Database.new
fsql = FakeSQL.new(db.get_db)

fsql.insert('users', { name: 'Higor Bueno', age: 15, city: 'Coronel Bicaco' })
data = fsql.select('*', fsql.order_by('age', 'dsc', fsql.from('users')))

include PutsUtils::PutsTable

puts_table %w[Name Age City ID] do
  data.map do |name, age, city, id|
    [name, age, city, id]
  end
end
