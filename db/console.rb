require('pry-byebug')
require_relative('../models/artist.rb')
require_relative('../models/albums.rb')

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({
  'name' => 'Beatles'
  })

artist1.save()

artist2 = Artist.new({
  'name' => 'John Lenon'
  })

artist2.save()

album1 = Album.new({
  'name' => 'Let it be',
  'genre' => 'Pop',
  'artist_id' => artist1.id
  })

album1.save()

album2 = Album.new({
  'name' => 'Hard Days Night',
  'genre' => 'Pop',
  'artist_id' => artist1.id
  })

album2.save()

all_artist = Artist.list_all()
all_albums = Album.list_all()
beatles_albums = artist1.albums()

binding.pry
nil
