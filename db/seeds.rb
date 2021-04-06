# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  User.create!(
  name: "テスト太郎",
  nick_name: "太郎",
  email: "test@test.com",
  password: "password"
  )
  Pet.create!(
  user_id: "1",
  post_id: "1",
  genre_id: "1",
  name: "太郎１",
  gender: "オス",
  age: "5",
  image: File.open("app/assets/images/image/雑種.jpg")
  )
  Genre.create!(
  animal_type: "犬",
  type: "ゴールデン・レトリーバー"
  )
  Genre.create!(
  animal_type: "猫",
  type: "アメリカン・ショートヘア"  
  )
  Genre.create!(
  animal_type: "鳥類",
  type: "セキセイインコ"  
  )
  Genre.create!(
  animal_type: "うさぎ",
  type: "アナウサギ"  
  )
  Genre.create!(
  animal_type: "カワウソ",
  type: "カワウソ"  
  )
  
  Post.create!(
  user_id: "1",
  genre_id: "1",
  title: "日常風景",
  text: "日常の中で取れた１枚です　うちの子かわいいでしょ！！！",
  image: File.open("app/assets/images/image/チワワ.jpg")
  )
  Post.create!(
  user_id: "1",
  genre_id: "1",
  title: "日常風景",
  text: "日常の中で取れた１枚です　うちの子かわいいでしょ！！！",
  image: File.open("app/assets/images/image/ゴールデンレトリバー.jpg")
  )
  Post.create!(
  user_id: "1",
  genre_id: "1",
  title: "日常風景",
  text: "日常の中で取れた１枚です　うちの子かわいいでしょ！！！",
  image: File.open("app/assets/images/image/シベリアン・ハスキー.jpg")
  )
  Post.create!(
  user_id: "1",
  genre_id: "1",
  title: "日常風景",
  text: "日常の中で取れた１枚です　うちの子かわいいでしょ！！！",
  image: File.open("app/assets/images/image/トイプードル.jpg")
  )
  Post.create!(
  user_id: "1",
  genre_id: "1",
  title: "日常風景",
  text: "日常の中で取れた１枚です　うちの子かわいいでしょ！！！",
  image: File.open("app/assets/images/image/トイプードル２.jpg")
  )
  Post.create!(
  user_id: "1",
  genre_id: "1",
  title: "日常風景",
  text: "日常の中で取れた１枚です　うちの子かわいいでしょ！！！",
  image: File.open("app/assets/images/image/柴犬.jpg")
  )