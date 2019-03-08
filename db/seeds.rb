Senior.destroy_all
Hobby.destroy_all
Friend.destroy_all
Match.destroy_all
Seniorhobby.destroy_all
Friendhobby.destroy_all

willa_mae = Senior.create(name: "Willa Mae", dob: Date.new(1954,4,3), email: "wm1954@oldmail.com", password: "cutelady")
bertha_jerkins = Senior.create(name: "Bertha Jenkins", dob: Date.new(1959,9,21), email: "bj59@oldmail.com", password: "bombgma")

rc = Friend.create(name:"Robert Carr", dob: Date.new(1988,11,14),email:"rc@rc.com", password:"rc")
jd = Friend.create(name:"Jane Doe", dob: Date.new(1988,11,13),email:"jd@gotmail.com", password:"datfaced0e")


knitting = Hobby.create(hobby: "Knitting")
reading = Hobby.create(hobby: "Reading")
art = Hobby.create(hobby: "Art")
sports = Hobby.create(hobby: "Sports")
cars = Hobby.create(hobby: "Cars")
gardening = Hobby.create(hobby: "Gardening")
traveling = Hobby.create(hobby: "Traveling")
food = Hobby.create(hobby: "Food")
hiking = Hobby.create(hobby: "Hiking")
writing = Hobby.create(hobby: "Writing")
cooking = Hobby.create(hobby: "Cooking")
diy = Hobby.create(hobby: "DIY")
dancing = Hobby.create(hobby: "Dancing")
music = Hobby.create(hobby: "Music")
movies = Hobby.create(hobby: "Movies")
chess = Hobby.create(hobby: "Chess")
yoga = Hobby.create(hobby: "Yoga")

m1 = Match.create(senior_id: willa_mae.id, hobby_id: knitting.id, friend_id:rc.id)
m2 = Match.create(senior_id: bertha_jerkins.id, hobby_id: reading.id,friend_id:jd.id)

w1 = Seniorhobby.create(senior_id: willa_mae.id, hobby_id: knitting.id)
b1 = Seniorhobby.create(senior_id: bertha_jerkins.id, hobby_id: reading.id)

rc1 = Friendhobby.create(friend_id: rc.id, hobby_id: knitting.id)
jd1 = Friendhobby.create(friend_id: jd.id, hobby_id: reading.id)
