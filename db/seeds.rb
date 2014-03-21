# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

User.destroy_all
Course.destroy_all
CourseEnrollment.destroy_all

puts "Create 3 users ...."
jsmith = User.create(first_name: "John",
			last_name: "Smith",
			username: "jsmith",
			password: "jsmith2014",
			email: "jsmith@email.com")

mjane = User.create(first_name: "Mary",
			last_name: "Jane",
			username: "mjane",
			password: "mjane2014",
			email: "mjane@email.com")

bjohn = User.create(first_name: "Bob",
			last_name: "Johnson",
			username: "bjohn",
			password: "bjohn2014",
			email: "bjohn@email.com")

@user = User.where(username: "jsmith").first
@user2 = User.where(username: "bjohn").first

puts "Create courses ..."
Course.create(title: "Intro to CS",
							code: "COSI 101",
							owner_id: @user.id,
							instructor_pin: 1231453,
							student_pin: 4349493,
							lecture_days: "M,W,F",
							lecture_time: "10:00-10:50",
							start_date: Date.new(2014,1,14),
							end_date: Date.new(2014,5,11),
							semester: "Spring 2014",
							school: "Brandeis",
							location: "Volen 101",
							instructor: "#{@user.first_name} #{@user.last_name}")
Course.create(title: "Advanced Programing Techniques",
							code: "COSI 22",
							owner_id: @user2.id,
							instructor_pin: 7867567, #Now will validated as unique in the model
							student_pin: 4349495, #Unique
							lecture_days: "M,W,F",
							lecture_time: "10:00-10:50",
							start_date: Date.new(2014,1,14),
							end_date: Date.new(2014,5,11),
							semester: "Spring 2014",
							school: "Brandeis",
							location: "Volen 101",
							instructor: "#{@user2.first_name} #{@user2.last_name}")
@course = Course.where(code: "aaaa").first

@user = User.where(username: "mjane").first

puts "Create 2 course_enrollements for Mary Jane ..."
CourseEnrollment.create(user: @user, 
						course: @course, 
						enrollment_type: "Student")

@user = User.where(username: "bjohn").first

CourseEnrollment.create(user: @user,
						course: @course,
						enrollment_type: "Instructor")

puts ".... DONE!"