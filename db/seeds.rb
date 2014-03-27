# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

<<<<<<< HEAD

User.destroy_all
Course.destroy_all
CourseEnrollment.destroy_all

puts "Create 3 users ...."
=======
User.destroy_all
Course.destroy_all
CourseEnrollment.destroy_all
>>>>>>> current-master

puts "Creating 3 users ...."
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

bjohn = User.create(first_name: "William",
			last_name: "Tarimo",
			username: "wtarimo",
			password: "wtarimo2014",
			email: "wtarimo@brandeis.edu")

@user = User.where(username: "jsmith").first
@user2 = User.where(username: "wtarimo").first

<<<<<<< HEAD

puts "Create a course ..."
Course.create(title: "Intro to CS",
							code: "aaaa",
							owner_id: @user.id,
=======
puts "Creating two courses ..."
Course.create(title: "Intro to CS",
							code: "COSI 101",
>>>>>>> current-master
							instructor_pin: 1231453,
							student_pin: 4349493,
							lecture_days: "M,W,F",
							lecture_start_time: "10:00",
							lecture_end_time: "10:50",
							start_date: Date.new(2014,1,14),
							end_date: Date.new(2014,5,11),
							semester: "Spring 2014",
							school: "Brandeis",
							location: "Volen 101",
							instructor: "#{@user.first_name} #{@user.last_name}")
<<<<<<< HEAD

Course.create(title: "Advanced Programing Techniques",
							code: "bbbb",
							owner_id: @user.id,
							instructor_pin: 1231453,
							student_pin: 4349493,
							lecture_days: "M,W,F",
							lecture_time: "10:00-10:50",
=======
Course.create(title: "Advanced Programing Techniques",
							code: "COSI 22",
							instructor_pin: 7867567, #Now will validated as unique in the model
							student_pin: 4349495, #Unique
							lecture_days: "M,W,F",
							lecture_start_time: "12:30",
							lecture_end_time: "13:50",
>>>>>>> current-master
							start_date: Date.new(2014,1,14),
							end_date: Date.new(2014,5,11),
							semester: "Spring 2014",
							school: "Brandeis",
							location: "Volen 101",
<<<<<<< HEAD
							instructor: "#{@user.first_name} #{@user.last_name}")

@course = Course.where(code: "aaaa").first

@user = User.where(username: "mjane").first

puts "Create 2 course_enrollements for Mary Jane ..."
=======
							instructor: "#{@user2.first_name} #{@user2.last_name}")
@course = Course.where(code: "COSI 101").first

@user = User.where(username: "mjane").first

puts "Enrolling Mary Jane in two courses ..."
>>>>>>> current-master
CourseEnrollment.create(user: @user, 
						course: @course, 
						enrollment_type: "Student")
CourseEnrollment.create(user: @user,
						course: @course,
						enrollment_type: "Instructor")

<<<<<<< HEAD

puts ".... DONE!"

						
=======
@course2 = Course.where(code: "COSI 22").first
puts "Enrolling William in two courses ..."
CourseEnrollment.create(user: @user2,
						course: @course,
						enrollment_type: "Instructor")
CourseEnrollment.create(user: @user2,
						course: @course2,
						enrollment_type: "Student")

puts ".... DONE!"
>>>>>>> current-master
