# メインのサンプルユーザーを1人作成する
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar")

             30.times do |n|
              name  = Faker::Name.name
              email = "example-#{n+1}@railstutorial.org"
              password = "password"
              User.create!(name:  name,
                           email: email,
                           password:              password)
             end
            
            
             users = User.order(:created_at).take(10)
             users.each do |user|
               10.times do
                 title = Faker::Book.title
                 description = Faker::Lorem.sentence(word_count: 10)
                 body = Faker::Lorem.paragraph(sentence_count: 3)
                 user.articles.create!(title: title, description: description, body: body)
               end
             end
             
                                      
          