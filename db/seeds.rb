# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author = Author.create(
  name: 'example'
)
post = Post.create(
  title: 'Vue3',
  body: 'Vue (pronounced /vjuː/, like view) is a progressive framework for building user interfaces. Unlike other monolithic frameworks, Vue is designed from the ground up to be incrementally adoptable.',
  author_id: author.id
)
post = Post.create(
  title: 'Next.js',
  body: 'Next.js gives you the best developer experience with all the features you need for production: hybrid static & server rendering, TypeScript support, smart bundling, route pre-fetching, and more. No config needed.',
  author_id: author.id
)

post = Post.create(
  title: 'React',
  body: 'React has been designed from the start for gradual adoption, and you can use as little or as much React as you need.',
  author_id: author.id
)

