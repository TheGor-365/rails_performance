50.times do
  article = Article.create(
    title: Faker::Book.title,
    body:  Faker::Lorem.paragraph(sentence_count: 2)
  )
  puts article.title
end
