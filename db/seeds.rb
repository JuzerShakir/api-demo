# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do | i |
  user = User.create(username: Faker::Internet.username,
                    password: Faker::Internet.password)
  if i % 2 == 0
    @author_ip = Faker::Internet.ip_v4_address
  else
    @author_ip = Post.last.author_ip
  end

  until user.posts.count == 2000 do
    Post.create(user_id: user.id,
                    title: Faker::Quote.singular_siegler,
                    content: Faker::Quote.matz,
                    author_ip: @author_ip
                    )
  end
end

random_users = User.take(50)

random_users.each do | user |
  user.posts.take(200).each do | post |
    user.feedbacks.create(post_id: post.id,
                         comment: Faker::Hipster.paragraph)
  end
end
