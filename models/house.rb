require_relative("../db/sql_runner")

class House
  attr_accessor :name, :logo
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i() if ['id']
    @name = options['name']
    @logo = options['logo']
  end

  def save()
    sql = "INSERT INTO houses (name, logo) VALUES ($1, $2) RETURNING id;"
    values = [@name, @logo]
    house = SqlRunner.run(sql, values).first()
    @id = house['id'].to_i()
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    values = []
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM houses"
    values = []
    houses = SqlRunner.run(sql, values)
    result = houses.map { |house| House.new(house) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    house = SqlRunner.run(sql, values).first()
    return House.new(house)
  end

  def delete()
    sql = "DELETE FROM houses WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end



end
