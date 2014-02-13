# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.create(title: "Test course",
	course_code: "abc",
	teacher_pin: "1234",
	lecture_day_time: "MWF 12-2",
	school: "Brandeis",
	semester: "Spring",
	location: "Volen 101",
	instructor_id: 1,
	instructor_name: "John Smith")