# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
%w[texts movies].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{table_name} RESTART IDENTITY CASCADE")
  puts "データ削除完了"
end

require "import_csv"
ImportCsv.text_data
ImportCsv.movie_data

email = "test@example.com"
password = "password"

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: email) do |user|
  user.password = password
  puts "ユーザーの初期データインポートに成功しました。"
end

admin_email = "admin@example.com"
admin_password = "password"
AdminUser.find_or_create_by!(email: admin_email) do |adminuser|
  adminuser.password = admin_password
  puts "ユーザーの初期データインポートに成功しました。"
end