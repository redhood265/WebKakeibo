# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#初期データを記載
# (2..5).each do |i|
#   Trade.create(exchange:"0", name:"#{i}月給与", amount:100000+(3980*"#{i}".to_i))
# end

# (7..10).each do |k|
#   Trade.create(exchange:"1", name:"#{k}月家賃", amount:30000+(2160*"#{k}".to_i))
# end

# 勘定科目のデータ登録
Category.create(exchange: 0, name: '給与')
Category.create(exchange: 0, name: '副収入')
Category.create(exchange: 0, name: '不労所得')
Category.create(exchange: 0, name: '雑所得')
Category.create(exchange: 1, name: '家賃')
Category.create(exchange: 1, name: '公共料金')
Category.create(exchange: 1, name: '食費')
Category.create(exchange: 1, name: '日用品費')
Category.create(exchange: 1, name: '通信費')
Category.create(exchange: 1, name: '家電')


# 収入テストデータ
Trade.create(exchange:0, category_id: 1, name:"今月の給与", price: 210000)
Trade.create(exchange:0, category_id: 3, name:"今月の配当金", price: 370)

# # 支出テストデータ
Trade.create(exchange:1, category_id: 1, name:"今月の家賃", price: 68000)
Trade.create(exchange:1, category_id: 7, name:"今月の食費", price: 42000)
Trade.create(exchange:1, category_id: 9, name:"今月の通信費", price: 42000)
