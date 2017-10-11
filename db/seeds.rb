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
student1 = Student.create!(full_name: "Matthijs Mandjes", image: "test", color: ["green", "red"], batch: 1, group_id: group1.id, remark: "If he fails next time, he gets red.")
student2 = Student.create!(full_name: "Jan Haagsma", image: "test", color: ["orange"], batch: 1, group_id: group1.id)
student3 = Student.create!(full_name: "Jan Haagsma", image: "test", color: ["orange"], batch: 1, group_id: group1.id)
student4 = Student.create!(full_name: "Jan Haagsma", image: "test", color: ["orange"], batch: 1, group_id: group1.id)

# group 2
student1 = Student.create!(full_name: "Henk smith", image: "test", color: ["green"], batch: 2, group_id: group2.id)
student2 = Student.create!(full_name: "Tessa Groenbeek", image: "test", color: ["orange"], batch: 2, group_id: group2.id)

# group 3
student1 = Student.create!(full_name: "Henk smith", image: "test", color: ["green"], batch: 3, group_id: group3.id)
student2 = Student.create!(full_name: "Tessa Groenbeek", image: "test", color: ["orange"], batch: 3, group_id: group3.id)

# group 4
student1 = Student.create!(full_name: "Henk smith", image: "test", color: ["green"], batch: 4, group_id: group4.id)
student2 = Student.create!(full_name: "Tessa Groenbeek", image: "test", color: ["orange"], batch: 4, group_id: group4.id)

# group 5
student1 = Student.create!(full_name: "Henk smith", image: "test", color: ["green"], batch: 5, group_id: group5.id)
student2 = Student.create!(full_name: "Tessa Groenbeek", image: "test", color: ["orange"], batch: 5, group_id: group5.id)

# group 6
student1 = Student.create!(full_name: "Henk smith", image: "test", color: ["green"], batch: 6, group_id: group6.id)
student2 = Student.create!(full_name: "Tessa Groenbeek", image: "test", color: ["orange"], batch: 6, group_id: group6.id)
