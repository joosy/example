posts = Post.create([
  { title: 'Welcome there', body: 'Hey, welcome to the joosy blog example' },
  { title: 'Test post',     body: 'Nothing there. Really' }
])
Comment.create(body: 'Great article!', post: posts.first)
