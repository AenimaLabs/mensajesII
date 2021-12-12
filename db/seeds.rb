# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# usuarios = Usuario.create([{nombre: 'Pepe', apellido:'Bolas', email:'dakjslkjd@djkasjlk'}, {nombre: 'Pajar', apellido:'Ito', email:'dakjslkjd@djkasjlk'},
#     {nombre:'Malana', apellido:'Rana', email:'dakjslkjd@djkasjlk'}, {nombre: 'Perico', apellido:'Paloma', email:'dakjslkjd@djkasjlk'}, {nombre:'Jalama', apellido:'Juana', email:'dakjslkjd@djkasjlk'}])

# blogs = Blog.create([{nombre: 'blog1', descripcion: 'lsdñlaskdñlakñlsd'}, 
#     {nombre: 'blog2', descripcion: 'lsdñlaskdñlakñlsd'}, {nombre: 'blog3', descripcion: 'lsdñlaskdñlakñlsd'}, 
#     {nombre: 'blog4', descripcion: 'lsdñlaskdñlakñlsd'}, {nombre: 'blog5', descripcion: 'lsdñlaskdñlakñlsd'}])

#---------------------------------------------------------------------------------------

 5.times do |i|
    Usuario.create(nombre: "Nombre Usuario #{i+1}", apellido: "Apellido Usuario #{i+1}", email: "email#{i+1}@gmail.com")
    
end

5.times do |i|
    Blog.create(nombre: "Blog-#{i+1}", descripcion: "Descripción  #{i+1} para Blog #{i+1}")
    
end

3.times do |i|
    Propietario.create(usuario: Usuario.find(1), blog: Blog.find(i+1))
end

Propietario.create(usuario: Usuario.find(2), blog: Blog.find(4))
Propietario.create(usuario: Usuario.last, blog: Blog.find(5))

5.times do |i|
    Propietario.create(usuario: Usuario.find(3), blog: Blog.find(i+1))    
end

3.times do |i|
    Publicacion.create(usuario: Usuario.first, blog: Blog.find(2), titulo: "Titulo n #{i+1}", contenido: "Contenido n #{i+1}")    
end

5.times do |i|
    Publicacion.create(usuario: Usuario.second, blog: Blog.last, titulo: "Titulo n #{i+1}", contenido: "Contenido n #{i+1}")        
end

rand(10).times do |i|
    Publicacion.create(usuario: Usuario.find(3), blog: Blog.all.sample, titulo: "Titulo n #{i+1}", contenido: "Contenido n #{i+1}")
end

2.times do |i|
    Mensaje.create(usuario: Usuario.find(3), publicacion: Publicacion.first, mensaje: "Mensaje n autor: #{i+1}", autor: "Autor n #{i+1}")
end

3.times do |i|
    Mensaje.create(usuario: Usuario.find(3), publicacion: Publicacion.second, mensaje: "Mensaje n autor: #{i+1}", autor: "Autor n #{i+3}")
end

3.times do |i|
    Mensaje.create(usuario: Usuario.find(4), publicacion: Publicacion.last, mensaje: "Mensaje n autor: #{i+1}", autor: "Autor n #{i+3}")  
end

#Publicacion.where("id=?",2).update(usuario: Usuario.last)

Publicacion.find(2).update(usuario: Usuario.last)