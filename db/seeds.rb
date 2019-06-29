# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Create Patients'
Patient.create(name: "John", date_birth: "01/01/1990")
Patient.create(name: "Rachel", date_birth: "01/01/1980")

puts 'Create Types Exams'
TypesExam.create(name: "Cefalometria", active: true)
TypesExam.create(name: "Limpeza", active: true)
TypesExam.create(name: "Outros Exames", active: true)
TypesExam.create(name: "Outros", active: false)

# Test Points
# puts 'Create Points'
# Point.create(point_type: :point_n, x: 632.698, y: 292.369)
# Point.create(point_type: :point_a, x: 626.272, y: 563.035)
# Point.create(point_type: :point_po, x: 163.245, y: 417.157)
# Point.create(point_type: :point_or, x: 567.222, y: 415.854)

# Point.create(point_type: :point_n, x: 632.698, y: 292.369)
# Point.create(point_type: :point_a, x: 647.253, y: 561.886)
# Point.create(point_type: :point_po, x: 163.245, y: 417.157)
# Point.create(point_type: :point_or, x: 567.222, y: 415.854)

puts 'Create Exams'
Exam.create(patient: Patient.first, types_exam: TypesExam.first, point_n: Point.new(point_type: :point_n, x: 632.698, y: 292.369), point_a: Point.new(point_type: :point_a, x: 626.272, y: 563.035), point_po: Point.new(point_type: :point_po, x: 163.245, y: 417.157), point_or: Point.new(point_type: :point_or, x: 567.222, y: 415.854))
Exam.create(patient: Patient.first, types_exam: TypesExam.first, point_n: Point.new(point_type: :point_n, x: 632.698, y: 292.369), point_a: Point.new(point_type: :point_a, x: 647.253, y: 561.886), point_po: Point.new(point_type: :point_po, x: 163.245, y: 417.157), point_or: Point.new(point_type: :point_or, x: 567.222, y: 415.854))

Exam.create(patient: Patient.second, types_exam: TypesExam.first, point_n: Point.new(point_type: :point_n, x: rand(630.000...636.000), y: rand(290.000...296.000)), point_a: Point.new(point_type: :point_a, x: rand(625.000...631.000), y: rand(560.000...566.000)), point_po: Point.new(point_type: :point_po, x: rand(160.000...166.000), y: rand(415.000...421.000)), point_or: Point.new(point_type: :point_or, x: rand(560.000...566.000), y: rand(415.000...421.000)))
Exam.create(patient: Patient.second, types_exam: TypesExam.first, point_n: Point.new(point_type: :point_n, x: rand(630.000...636.000), y: rand(290.000...296.000)), point_a: Point.new(point_type: :point_a, x: rand(625.000...631.000), y: rand(560.000...566.000)), point_po: Point.new(point_type: :point_po, x: rand(160.000...166.000), y: rand(415.000...421.000)), point_or: Point.new(point_type: :point_or, x: rand(560.000...566.000), y: rand(415.000...421.000)))