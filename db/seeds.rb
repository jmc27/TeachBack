# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Course.delete_all
CourseEnrollment.delete_all

User.create(firstname: "John",
			lastname: "Smith",
			username: "jsmith",
			password: "letmein",
			email: "jsmith@email.com",
			email_verified: true)

User.create(firstname: "Mary",
			lastname: "Jane",
			username: "mjane",
			password: "password",
			email: "mjane@email.com",
			email_verified: true)

User.create(firstname: "Bob",
			lastname: "Johnson",
			username: "bjohn",
			password: "000000",
			email: "bjohn@email.com",
			email_verified: false)

@user = User.where(username: "jsmith").first

@user.created_courses.create(title: "Intro to CS",
							course_code: "aaaa",
							teacher_pin: "abc123",
							lecture_day_time: "MW 12-2",
							school: "Brandeis",
							semester: "Spring",
							location: "Volen 101",
							instructor_id: @user.id,
							instructor_name: "#{@user.firstname} #{@user.lastname}")
@course = Course.where(course_code: "aaaa").first

@user = User.where(username: "mjane").first

CourseEnrollment.create(user: @user, 
						course: @course, 
						enrollment_type: "Student")

@user = User.where(username: "bjohn").first

CourseEnrollment.create(user: @user,
						course: @course,
						enrollment_type: "TA")
						
