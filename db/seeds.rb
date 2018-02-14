# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Organization

Contract.delete_all
Space.delete_all
User.delete_all
Organization.delete_all

org1 = Organization.create(name: 'CODE SAC', organization_identifier: '1238436534658', description: 'Software development', website: 'https://www.code.la/')
# User
users1 = User.create(first_name: 'Juan', last_name: 'Carlin', email: 'juan@code.la', mobile_phone: 195837452, emergency_phone: 978574646, emergency_contact: '', birthday: '14-02-1999', role: 'user', user_identifier: 78907890, address: 'Santa Anita Ga', bio: '', organization: org1)
users2 = User.create(first_name: 'Grecia', last_name: 'Villagran', email: 'grecia@code.la', mobile_phone: 989223345, emergency_phone: 986757467, emergency_contact: 'Carmen De la Cruz', birthday: '16-12-2000', role: 'user', user_identifier:78956890, address: 'Urbanización San', bio: '', organization: org1)
# Space
space1 = Space.create(space_identifier: '01020302', name: 'Lugar 14', category: 'Espacio de trabajo', capacity: 2, parent: nil, area: nil)
space2 = Space.create(space_identifier: '01020303', name: 'Lugar 15', category: 'Espacio de trabajo', capacity: 1, parent: space1, area: nil)
# Contract
contract1 = Contract.create(start_date: '03-01-2018', finish_date: '01-12-2020', space: space1, user: users1)
contract2 = Contract.create(start_date: '03-01-2018', finish_date: '01-12-2020', space: space2, user: users2)
