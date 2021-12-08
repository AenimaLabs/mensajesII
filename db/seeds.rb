# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

usuarios = Usuario.create([{nombre: 'Pepe', apellido:'Bolas', email:'dakjslkjd@djkasjlk'}, {nombre: 'Pajar', apellido:'Ito', email:'dakjslkjd@djkasjlk'},
    {nombre:'Malana', apellido:'Rana', email:'dakjslkjd@djkasjlk'}, {nombre: 'Perico', apellido:'Paloma', email:'dakjslkjd@djkasjlk'}, {nombre:'Jalama', apellido:'Juana', email:'dakjslkjd@djkasjlk'}])

blogs = Blog.create([{nombre: 'blog1', descripcion: 'lsdñlaskdñlakñlsd'}, 
    {nombre: 'blog2', descripcion: 'lsdñlaskdñlakñlsd'}, {nombre: 'blog3', descripcion: 'lsdñlaskdñlakñlsd'}, 
    {nombre: 'blog4', descripcion: 'lsdñlaskdñlakñlsd'}, {nombre: 'blog5', descripcion: 'lsdñlaskdñlakñlsd'}])
