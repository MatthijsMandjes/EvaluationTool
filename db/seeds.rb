Evaluation.destroy_all
Student.destroy_all
Group.destroy_all
User.destroy_all

user1 = User.create!(email: "admin@evaluationtool.com", password: "test123")

group1 = Group.create!(start_date: "09-10-2017", end_date: "20-10-2017", batch: 1)
group2 = Group.create!(start_date: "03-05-2017", end_date: "18-08-2017", batch: 2)
group3 = Group.create!(start_date: "09-10-2017", end_date: "20-10-2017", batch: 3)
group4 = Group.create!(start_date: "03-05-2017", end_date: "18-08-2017", batch: 4)
group5 = Group.create!(start_date: "09-10-2017", end_date: "20-10-2017", batch: 5)
group6 = Group.create!(start_date: "03-05-2017", end_date: "18-08-2017", batch: 6)

# group 1
student1 = Student.create!(full_name: "Matthijs Mandjes", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 1, group_id: group1.id)
student2 = Student.create!(full_name: "Jan Haagsma", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 1, group_id: group1.id)
student3 = Student.create!(full_name: "Henk smith", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 1, group_id: group1.id)
student4 = Student.create!(full_name: "Tessa Groenbeek", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 1, group_id: group1.id)
student5 = Student.create!(full_name: "Sander Maarse", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 1, group_id: group1.id)
student6 = Student.create!(full_name: "Berend Bolder", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg",batch: 1, group_id: group1.id)
student7 = Student.create!(full_name: "Bartje Roelaar", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 1, group_id: group1.id)
student8 = Student.create!(full_name: "Elco Schoolmeester", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 1, group_id: group1.id)
student9 = Student.create!(full_name: "Ron Balwa", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 1, group_id: group1.id)
student10 = Student.create!(full_name: "Louwrens Bokhorst", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 1, group_id: group1.id)

# group 2
student1 = Student.create!(full_name: "Henk smith", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 2, group_id: group2.id)
student2 = Student.create!(full_name: "Tessa Groenbeek", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 2, group_id: group2.id)

# group 3
student1 = Student.create!(full_name: "Henk smith", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 3, group_id: group3.id)
student2 = Student.create!(full_name: "Tessa Groenbeek", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 3, group_id: group3.id)

# group 4
student1 = Student.create!(full_name: "Henk smith", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 4, group_id: group4.id)
student2 = Student.create!(full_name: "Tessa Groenbeek", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 4, group_id: group4.id)

# group 5
student1 = Student.create!(full_name: "Henk smith", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 5, group_id: group5.id)
student2 = Student.create!(full_name: "Tessa Groenbeek", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 5, group_id: group5.id)

# group 6
student1 = Student.create!(full_name: "Henk smith", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 6, group_id: group6.id)
student2 = Student.create!(full_name: "Tessa Groenbeek", image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", batch: 6, group_id: group6.id)
