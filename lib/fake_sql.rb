# frozen_string_literal: true

class FakeSQL
  def initialize(database)
    @database = database
  end

  def select(columns, result = nil)
    return nil unless result

    case columns
    when '*'
      columns = result.first.keys
    when 'count'
      return result.length
    else
      columns = columns.split(',').map!(&:to_sym)
    end

    result.map do |row|
      columns.map do |column|
        nil unless row[column]
        row[column]
      end
    end
  end

  def from(table, conditions = nil)
    return @database[table.to_sym] if !@database[table.to_sym].nil? && conditions.nil?

    instance_eval("@database[:#{table}].filter { |#{table}| #{conditions[:where]} }", __FILE__, __LINE__)
  end

  def order_by(column, order, result)
    column = column.to_sym

    result.sort do |a, b|
      compare = a[column] < b[column] ? -1 : 1
      order == 'asc' ? compare : -compare
    end
  end

  def insert(table, data)
    data[:id] = from(table).length + 1
    @database[table.to_sym].push(data)
  end

  def outer_join(users, heroes)
    users.map do |user|
      usr_data = user
      hero_data = heroes.find { |hero| hero[:users_id] == user[:id] }
      usr_data.merge hero_data if hero_data
      usr_data if hero_data
    end
  end

  def inner_join(users, heroes)
    result = users.select do |user|
      temp = heroes.select { |hero| hero[:users_id] == user[:id] }
      (temp.length > 0) ? true : false
    end

    outer_join(result, heroes)
  end

  def delete_from(table, conditions)
    count = 0
    from(table, conditions).each do |row|
      count += 1
      from(table).delete row
    end
    count
  end

  def delete_id(table, id)
    delete_from table, { where: "#{table}[:id] == #{id}" }
  end
end
