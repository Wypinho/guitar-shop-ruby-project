require_relative('../db/sql_runner')

class Shop

  attr_reader :id
  attr_accessor :till

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @till = options['till']
  end

  def save()
    sql = "INSERT INTO shops (
          till
          ) VALUES ($1) RETURNING id;"
    values = [@till]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  # def self.all()
  #   sql = "SELECT * FROM shops;"
  #   results = SqlRunner.run(sql)
  #   return results.map{|shop| Shop.new(shop)}
  # end

  def self.delete_all()
    sql = "DELETE FROM shops;"
    SqlRunner.run(sql)
  end

  # def self.find(id)
  #   sql = "SELECT * FROM shops
  #         WHERE id = $1;"
  #   values = [id]
  #   result = SqlRunner.run(sql, values)
  #   return Shop.new(result.first)
  # end
  #
  # def guitars()
  #   sql = "SELECT * FROM guitars
  #         WHERE shop_id = $1;"
  #   values = [@id]
  #   results = SqlRunner.run(sql, values)
  #   return results.map{|guitar| Guitar.new(guitar)}
  # end

end
