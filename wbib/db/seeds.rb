# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

topics = Topic.create(
  [
    { title: 'Crafts', description: 'Pinterest craft ideas'},
    { title: 'Kittens', description: 'Lots of kittens'},
    { title: 'Movies', description: 'Random IMDB links'},
    { title: 'Memes', description: 'Random memes'},
    { title: 'Vocab', description: 'Urban Dictionary Links'}
  ]
)

references = Reference.create(
  [
    { URL: 'https://www.pinterest.com/pin/179651472612832289/', date: DateTime.current, topic_id: topics[0].id},
    { URL: 'https://www.pinterest.com/pin/145593000429407299/', date: DateTime.current, topic_id: topics[0].id},
    { URL: 'https://www.pinterest.com/pin/366058275937569308/', date: DateTime.current, topic_id: topics[0].id},
    { URL: 'https://www.youtube.com/watch?v=L6EwZWWRA-U', date: DateTime.current, topic_id: topics[1].id},
    { URL: 'https://www.youtube.com/watch?v=LI7-Cu-9wWM', date: DateTime.current, topic_id: topics[1].id},
    { URL: 'https://www.youtube.com/watch?v=c1c0a4fo1zo', date: DateTime.current, topic_id: topics[1].id},
    { URL: 'https://www.youtube.com/watch?v=56ucT_Hw4bg', date: DateTime.current, topic_id: topics[1].id},
    { URL: 'http://www.imdb.com/title/tt0340855/', date: DateTime.current, topic_id: topics[2].id},
    { URL: 'http://www.imdb.com/title/tt0348836/', date: DateTime.current, topic_id: topics[2].id},
    { URL: 'http://imgur.com/gallery/I6B8jFe', date: DateTime.current, topic_id: topics[3].id},
    { URL: 'http://russblib.blogspot.com/2014/12/memes-of-2014.html', date: DateTime.current, topic_id: topics[3].id},
    { URL: 'https://thechive.files.wordpress.com/2014/06/ex-girlfriend-meme-14.jpg?w=550&h=537', date: DateTime.current, topic_id: topics[3].id},
    { URL: 'http://www.urbandictionary.com/define.php?term=Trill&defid=2633397', date: DateTime.current, topic_id: topics[4].id},
    { URL: 'http://www.urbandictionary.com/define.php?term=white+lighter+myth&defid=2660669', date: DateTime.current, topic_id: topics[4].id},
    { URL: 'http://www.urbandictionary.com/define.php?term=go+ham+and+cheese&defid=7421665', date: DateTime.current, topic_id: topics[4].id},
    { URL: 'http://www.urbandictionary.com/define.php?term=pet+parents&defid=8399969', date: DateTime.current, topic_id: topics[4].id}
  ]
)
