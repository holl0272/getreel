Collection.delete_all
Movie.delete_all
Actor.delete_all

c1 = Collection.create(:name => 'Test 1', :description => 'This is the first test collection')
c2 = Collection.create(:name => 'Test 2', :description => 'This is the second test collection')

m1 = Movie.create(:title => 'Jaws', :year => '1975', :rated => 'PG13', :released => '1975-06-20', :runtime => '124min', :director => 'Steven Spielberg', :imdbID => 'tt0073195', :plot => 'When a gigantic great white shark begins to menace the small island community of Amity, a police chief, a marine scientist and grizzled fisherman set out to stop it', :poster => 'http://ia.media-imdb.com/images/M/MV5BOTUwMzY4NzI4Nl5BMl5BanBnXkFtZTcwMDgzNjk3OA@@._V1_SY317_CR12,0,214,317_.jpg')
m2 = Movie.create(:title => 'The Matrix', :year => '1999', :rated => 'R', :released => '1999-03-31', :runtime => '2h 16mins', :director => 'Andy Wachowski', :imdbID => 'tt0133093', :plot => 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers', :poster => 'http://ia.media-imdb.com/images/M/MV5BMjEzNjg1NTg2NV5BMl5BanBnXkFtZTYwNjY3MzQ5._V1_SY317_CR6,0,214,317_.jpg')
m3 = Movie.create(:title => 'The Big Lebowski', :year => '1998', :rated => 'R', :released => '1998-03-06', :runtime => '1h 57min', :director => 'Joel Coen', :imdbID => 'tt0118715', :plot => ' Lebowski, mistaken for a millionaire Lebowski, seeks restitution for his ruined rug and enlists his bowling buddies to help get it.', :poster => 'http://ia.media-imdb.com/images/M/MV5BMTcwOTAwMzEyMl5BMl5BanBnXkFtZTcwODkzNjk3OA@@._V1_SY317_CR12,0,214,317_.jpg')

a1 = Actor.create(:name => 'Roy Scheider', :birthplace => 'Orange, NJ', :dob => '2008-11-10', :dod => '2008-02-10', :image => 'http://ia.media-imdb.com/images/M/MV5BMTA2ODY5ODg4OTdeQTJeQWpwZ15BbWU2MDUzOTM3Nw@@._V1._SX214_CR0,0,214,314_.jpg')
a2 = Actor.create(:name => 'Keanu Reeves', :birthplace => 'Beirut, Lebanon', :dob => '1964-09-02', :dod => 'NA', :image => 'http://ia.media-imdb.com/images/M/MV5BNjUxNDcwMTg4Ml5BMl5BanBnXkFtZTcwMjU4NDYyOA@@._V1._SY314_CR14,0,214,314_.jpg')
a3 = Actor.create(:name => 'Laurence Fishburne', :birthplace => 'Augusta, GA', :dob => '1961-07-30', :dod => 'NA', :image => 'http://ia.media-imdb.com/images/M/MV5BMTc0NjczNDc1MV5BMl5BanBnXkFtZTYwMDU0Mjg1._V1._SX214_CR0,0,214,314_.jpg')
a4 = Actor.create(:name => 'Jeff Bridges', :birthplace => 'Los Angeles, CA', :dob => '1949-12-04', :dod => 'NA', :image => 'http://ia.media-imdb.com/images/M/MV5BNTU1NjM4MDYzMl5BMl5BanBnXkFtZTcwMjIwMjMyMw@@._V1._SY314_CR10,0,214,314_.jpg')
a5 = Actor.create(:name => 'John Goodman', :birthplace => 'St. Louis, MS', :dob => '1952-06-20', :dod => 'NA', :image => 'http://ia.media-imdb.com/images/M/MV5BMjI2MTIzODQ1M15BMl5BanBnXkFtZTcwNjI4Mzc1OA@@._V1._SY314_CR4,0,214,314_.jpg')

c1.movies = [m1, m2]

m1.actors = [a1, a2]
m2.actors = [a3, a4]
m3.actors = [a5]