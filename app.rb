require 'pg'

conn = PG.connect(
  host: ENV['DB_HOST'],
  dbname: ENV['DB_NAME'],
  user: ENV['DB_USER'],
  password: ENV['DB_PASSWORD']
)

res = conn.exec("SELECT NOW();")

res.each do |row|
  puts row
end