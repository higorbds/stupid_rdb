require 'minitest/autorun'
require_relative '../lib/fake_sql'
require_relative '../lib/database'

describe FakeSQL do
  before do
    @db = Database.new
    @fksql = FakeSQL.new(@db.get_db)
  end

  describe 'select' do
    it 'Select all' do
      assert_equal @fksql.select('*', @fksql.from('users')).first, ['Peter Parker', 25, 'New York', 1]
    end

    it 'Select Count' do
      assert_equal @fksql.select('count', @fksql.from('users')), 37
      assert_equal @fksql.select('count', @fksql.from('heroes')), 27
    end

    it 'Select Columns' do
      assert_equal @fksql.select('name,age', @fksql.from('users')).first, ['Peter Parker', 25]
      assert_equal @fksql.select('alterego,users_id', @fksql.from('heroes')).first, ['Green Lantern', 24]
    end
  end

  describe 'from' do
    it 'from' do
      assert_equal @fksql.from('users'), @db.get_db[:users]
      assert_equal @fksql.from('heroes'), @db.get_db[:heroes]
    end

    it 'from with conditions' do
      assert_equal @fksql.from('users', { where: 'users[:age] > 1000' }).first, { name: 'Thor Odinson', age: 1500, city: 'Asgard', id: 8 }
    end
  end

  describe 'order_by' do
    it 'order_by ascendent' do
      assert_equal @fksql.select('*', @fksql.order_by('age', 'asc', @fksql.from('users'))).first, ['Jubilation Lee', 22, 'Los Angeles', 37]
    end

    it 'order_by descendent' do
      assert_equal @fksql.select('*', @fksql.order_by('age', 'dsc', @fksql.from('users'))).first, ['Thor Odinson', 1500, 'Asgard', 8]
    end
  end
end
