# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Genre.destroy_all
Song.destroy_all
Album.destroy_all
User.destroy_all
Mixtape.destroy_all
Artist.destroy_all

g1 = Genre.create(name: 'Electronica')
g2 = Genre.create(name: 'Pop')
g3 = Genre.create(name: 'Rock')

s1 = Song.create(name: 'Obedear')
s2 = Song.create(name: 'I Want It That Way')
s3 = Song.create(name: "Don't Want to Miss A Thing")

a1 = Album.create(name: 'Fineshrines')
a2 = Album.create(name: 'Backstreets Back')
a3 = Album.create(name: 'Armageddon Soundtrack')

r1 = Artist.create(name: 'Purity Ring')
r2 = Artist.create(name: 'Backstreet Boys')
r3 = Artist.create(name: 'Aerosmith')

m1 = Mixtape.create(name: 'Work')
m2 = Mixtape.create(name: 'Sex mix')
m3 = Mixtape.create(name: 'Pump up the Jams')

u1 = User.create(user_name: 'Jeff', password: 'chicken', password_confirmation:'chicken', is_admin: true)
u2 = User.create(user_name: 'Jim', password: 'mule', password_confirmation: 'mule')
u3 = User.create(user_name: 'Bob', password: 'monkey', password_confirmation:'monkey')

r1.songs << s1
r2.songs << s2
r3.songs << s3

a1.songs << s1
a2.songs << s2
a3.songs << s3

g1.songs << s1
g2.songs << s2
s3.genres << g3

u1.mixtapes << m1 << m2
u2.mixtapes =[m3]
u2.save

m1.songs << s2 << s3
m2.songs << s1



