# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Priority.destroy_all
Task.destroy_all

u1 = User.create(name: "UserA", email: "ua@user.com", password: 'a', password_confirmation: 'a')
u2 = User.create(name: "UserB", email: "ub@user.com", password: 'b', password_confirmation: 'b')
u3 = User.create(name: "UserC", email: "uc@user.com", password: 'c', password_confirmation: 'c')
u4 = User.create(name: "UserD", email: "ud@user.com", password: 'd', password_confirmation: 'd')

p1 = Priority.create(name: "Urgent", color: "#ff0000", urgency: 10)
p2 = Priority.create(name: "Somewhat Urgent", color: "#ff00aa", urgency: 8)
p3 = Priority.create(name: "Unimportant", color: "#00ff00", urgency: 2)

u1.priorities << p1 << p2 << p3

t1 = Task.create(title: 'Kill all students', description: 'Kill them all', address: '56 York St. Sydney')
t1.priority = p1
t2 = Task.create(title: 'Buy milk', description: 'Thirsty', address: '222 Botany Rd Alexandria, Sydney')
t2.priority = p2
t3 = Task.create(title: 'Make a baby', description: 'How is babby formed', address: '18 Belfairs St. Robertson, Brisbane')
t3.priority = p3

u1.tasks << t1 << t2 << t3