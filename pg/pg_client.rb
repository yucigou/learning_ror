require 'pg'

class PgClient
  def initialize()
    # Instance variables
    @conn = PGconn.connect("172.21.0.200", 5432, '', '', "monkey_db", "monkey_user", "monkey_pass")
  end

  def insertRecord()
    @conn.exec('insert into foo(id) values (6);')
  end

  def showRecords()
    res  = @conn.exec('select * from foo')

    res.each do |row|
      puts row
    end
  end
end

pgClient = PgClient.new()
# pgClient.insertRecord()
pgClient.showRecords()