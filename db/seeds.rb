Senior.destroy_all
Hobby.destroy_all
Friend.destroy_all
Match.destroy_all

willa_mae = Senior.create(name: "Willa Mae", dob: Date.new(1954,4,3), email: "wm1954@oldmail.com", password: "cutelady")
bertha_jerkins = Senior.create(name: "Bertha Jenkins", dob: Date.new(1959,9,21), email: "bj59@oldmail.com", password: "bombgma")

rc = Friend.create(name:"Robert Carr", dob: Date.new(1988,11,14),email:"rccola@gotmail.com", password:"cooldud3")
jd = Friend.create(name:"Jane Doe", dob: Date.new(1988,11,13),email:"jd@gotmail.com", password:"datfaced0e")


knitting = Hobby.create(hobby: "Knitting")
reading = Hobby.create(hobby: "Reading")

m1 = Match.create(senior_id: willa_mae.id, hobby_id: knitting.id, friend_id:rc.id)
m2 = Match.create(senior_id: bertha_jerkins.id, hobby_id: reading.id,friend_id:jd.id)
