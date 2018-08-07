# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)d

u1 = User.create(name: "yunshengji", avatar: 'https://en.wikipedia.org/wiki/Snoopy#/media/File:Snoopy_Peanuts.png')
u2 = User.create(name: "Fabio",avatar: 'https://weneedfun.com/wp-content/uploads/2017/06/Cute-Snoopy-5.jpg')
u3 = User.create(name: "Chris", avatar:'https://weneedfun.com/wp-content/uploads/2017/06/Cute-Snoopy-5.png')
a = Post.create(content: "Today is a good day", date: Date.today, user_id: 1)
b = Post.create(content: "Tomorrow will be a good day", date: Date.today, user_id: 2)
c = Post.create(content: "The day after tmr will be a good day", date: Date.today, user_id: 3)
Comment.create(content: "gee-really?", user_id: 1, post_id: 2)
Comment.create(content: "Fabio-really?", user_id: 2, post_id: 3)
Comment.create(content: "Chris-really?", user_id: 3, post_id: 1)
Photo.create(url: "https://en.wikipedia.org/wiki/Snoopy#/media/File:Snoopy_Peanuts.png", post_id: 1)
Photo.create(url: "https://en.wikipedia.org/wiki/Snoopy#/media/File:Snoopy_Peanuts.png", post_id: 1)
Photo.create(url: "https://en.wikipedia.org/wiki/Snoopy#/media/File:Snoopy_Peanuts.png", post_id: 1)

a.liked_by u2
a.liked_by u3
b.liked_by u1
c.liked_by u2

