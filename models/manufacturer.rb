require_relative('../db/sql_runner')

class Manufacturer

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO manufacturers (
          name
          ) VALUES ($1) RETURNING id;"
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM manufacturers;"
    results = SqlRunner.run(sql)
    return results.map{|manufacturer| Manufacturer.new(manufacturer)}
  end

  def self.delete_all()
    sql = "DELETE FROM manufacturers;"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM manufacturers
          WHERE id = $1;"
    values = [id]
    result = SqlRunner.run(sql, values)
    return Manufacturer.new(result.first)
  end

end
