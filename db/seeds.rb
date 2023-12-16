# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'

Booking.destroy_all
TeachingLanguageSession.destroy_all
DataTeacher.destroy_all
User.destroy_all

puts "creando usuarios estudiantes"
# Usuario 1
user_student1 = User.create!(
  email: "alejandro.perez@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Alejandro",
  last_name: "Pérez",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Apasionado por la diversidad lingüística y cultural del mundo.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Portugués",
  objectives: "Viajar a Estados Unidos"
)

file_student1 = URI.open("https://images.unsplash.com/photo-1529068755536-a5ade0dcb4e8?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTM2fHxlc3R1ZGlhbnRlc3xlbnwwfHwwfHx8MA%3D%3D")
user_student1.photo.attach(io: file_student1, filename: "federica_image.png", content_type: "image/png")
user_student1.save!

#Usuario 2 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student2 = User.create!(
  email: "marta.rodriguez@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Marta",
  last_name: "Rodríguez",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-10-25".to_date,
  about_me: "Amante de los idiomas y políglota en proceso de aprendizaje constante.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Portugués",
  objectives: "Viajar a Estados Unidos"
)

file_student2 = URI.open("https://images.unsplash.com/photo-1427504494785-3a9ca7044f45?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8ZXN0dWRpYW50ZXN8ZW58MHx8MHx8fDA%3D")
user_student2.photo.attach(io: file_student2, filename: "federica_image.png", content_type: "image/png")
user_student2.save!

# Usuario 3 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student3 = User.create!(
  email: "luis.gonzalez@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Luis",
  last_name: "González",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2001-09-08".to_date,
  about_me: "Estudiante entusiasta de idiomas extranjeros con un oído afinado.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student3 = URI.open("https://images.unsplash.com/photo-1544717305-2782549b5136?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student3.photo.attach(io: file_student3, filename: "federica_image.png", content_type: "image/png")
user_student3.save!

# Usuario 4 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student4 = User.create!(
  email: "sofia.lopez@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Sofía",
  last_name: "López",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Estudiante de lenguas clásicas, conectando con la raíz de la comunicación.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student4 = URI.open("https://plus.unsplash.com/premium_photo-1681248156422-c01a2c803588?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzN8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student4.photo.attach(io: file_student4, filename: "federica_image.png", content_type: "image/png")
user_student4.save!

# Usuario 5 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student5 = User.create!(
  email: "juan.martinez@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Juan",
  last_name: "Martínez",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Explorador de la gramática y vocabulario, siempre buscando desafíos nuevos.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student5 = URI.open("https://images.unsplash.com/photo-1492462543947-040389c4a66c?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student5.photo.attach(io: file_student5, filename: "federica_image.png", content_type: "image/png")
user_student5.save!

# Usuario 6 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student6 = User.create!(
  email: "valeria.garcia@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Valeria",
  last_name: "García",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Embajador del intercambio cultural a través del aprendizaje de idiomas.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student6 = URI.open("https://images.unsplash.com/photo-1576267423445-b2e0074d68a4?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student6.photo.attach(io: file_student6, filename: "federica_image.png", content_type: "image/png")
user_student6.save!

# Usuario 7 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student7 = User.create!(
  email: "miguel.fernandez@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Miguel",
  last_name: "Fernández",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Amante de los proverbios y expresiones idiomáticas en diferentes idiomas.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student7 = URI.open("https://plus.unsplash.com/premium_photo-1680807869418-55f36574b53a?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student7.photo.attach(io: file_student7, filename: "federica_image.png", content_type: "image/png")
user_student7.save!

# Usuario 8 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student8 = User.create!(
  email: "ana.diaz@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Ana",
  last_name: "Díaz",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Apasionado por la traducción y la interpretación como formas de arte.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student8 = URI.open("https://images.unsplash.com/photo-1507537417841-81e85feb9bd2?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student8.photo.attach(io: file_student8, filename: "federica_image.png", content_type: "image/png")
user_student8.save!

# Usuario 9 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student9 = User.create!(
  email: "ricardo.torres@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Ricardo",
  last_name: "Torres",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Admirador de las culturas a través de las lenguas, derribando barreras.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student9 = URI.open("https://images.unsplash.com/photo-1517971129774-8a2b38fa128e?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDd8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student9.photo.attach(io: file_student9, filename: "federica_image.png", content_type: "image/png")
user_student9.save!

# Usuario 10 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student10 = User.create!(
  email: "carolina.herrera@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Carolina",
  last_name: "Herrera",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Estudiante de fonética y pronunciación, perfeccionando acentos.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student10 = URI.open("https://images.unsplash.com/photo-1624727828618-ee42ef2ec5cf?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDZ8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student10.photo.attach(io: file_student10, filename: "federica_image.png", content_type: "image/png")
user_student10.save!

# Usuario 11 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student11 = User.create!(
  email: "daniel.sanchez@gmail.com",
  role: 0,
  password: "123456",
first_name: "Daniel",
  last_name: "Sánchez",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Adicto a las lenguas en peligro de extinción, comprometido con su preservación.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student11 = URI.open("https://images.unsplash.com/photo-1584473457409-ae5c91d7d8b1?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTB8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student11.photo.attach(io: file_student11, filename: "federica_image.png", content_type: "image/png")
user_student11.save!

# Usuario 12 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student12 = User.create!(
  email: "laura.ramirez@gmail.com",
  role: 0,
  password: "123456",
first_name: "Laura",
  last_name: "Ramírez",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Fanático de los dialectos y las variantes regionales, siempre atento a las diferencias.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student12 = URI.open("https://images.unsplash.com/photo-1521737711867-e3b97375f902?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTR8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student12.photo.attach(io: file_student12, filename: "federica_image.png", content_type: "image/png")
user_student12.save!

# Usuario 13 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student13 = User.create!(
  email: "antonio.medina@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Antonio",
  last_name: "Medina",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Estudiante de lingüística, analizando la estructura y evolución de los idiomas.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student13 = URI.open("https://images.unsplash.com/photo-1507537297725-24a1c029d3ca?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTZ8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student13.photo.attach(io: file_student13, filename: "federica_image.png", content_type: "image/png")
user_student13.save!

# Usuario 14 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student14 = User.create!(
  email: "elena.gutierrez@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Elena",
  last_name: "Gutiérrez",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Me gusta enseñar inglés",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student14 = URI.open("https://images.unsplash.com/photo-1560439450-57df7ac6dbef?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student14.photo.attach(io: file_student14, filename: "federica_image.png", content_type: "image/png")
user_student14.save!

# Usuario 15 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student15 = User.create!(
  email: "javier.ortiz@gmail.com",
  role: 0,
  password: "123456",
first_name: "Javier",
  last_name: "Ortiz",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Explorador de la literatura mundial, leyendo obras en su idioma original.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student15 = URI.open("https://images.unsplash.com/photo-1571193161738-deaba9b6cc26?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjJ8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student15.photo.attach(io: file_student15, filename: "federica_image.png", content_type: "image/png")
user_student15.save!

# Usuario 16 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student16 = User.create!(
  email: "maria.nunez@gmail.com",
  role: 0,
  password: "123456",
first_name: "María",
  last_name: "Núñez",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Enamorado de la fonología y los sonidos únicos de cada lengua.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student16 = URI.open("https://images.unsplash.com/photo-1598257006303-031250badbdc?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjZ8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student16.photo.attach(io: file_student16, filename: "federica_image.png", content_type: "image/png")
user_student16.save!

# Usuario 17 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student17 = User.create!(
  email: "carlos.vargas@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Carlos",
  last_name: "Vargas",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Estudiante de interpretación simultánea, desafiando los límites lingüísticos.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student17 = URI.open("https://images.unsplash.com/photo-1541178735493-479c1a27ed24?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODJ8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student17.photo.attach(io: file_student17, filename: "federica_image.png", content_type: "image/png")
user_student17.save!

# Usuario 18 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student18 = User.create!(
  email: "andrea.castro@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Andrea",
  last_name: "Castro",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Aprendiz de la caligrafía de diferentes alfabetos, buscando la belleza en las palabras.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student18 = URI.open("https://images.unsplash.com/photo-1586448983330-d03f696c8271?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzR8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student18.photo.attach(io: file_student18, filename: "federica_image.png", content_type: "image/png")
user_student18.save!

# Usuario 19 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student19 = User.create!(
  email: "roberto.jimenez@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Roberto",
  last_name: "Jiménez",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Buscador de conexiones entre idiomas, descubriendo similitudes sorprendentes.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student19 = URI.open("https://plus.unsplash.com/premium_photo-1679547202334-176bdb75f652?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQxfHxlc3R1ZGlhbnRlc3xlbnwwfHwwfHx8MA%3D%3D")
user_student19.photo.attach(io: file_student19, filename: "federica_image.png", content_type: "image/png")
user_student19.save!

# Usuario 20 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_student20 = User.create!(
  email: "natalia.silva@gmail.com",
  role: 0,
  password: "123456",
  first_name: "Natalia",
  last_name: "Silva",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-11-28".to_date,
  about_me: "Embajador del multilingüismo, promoviendo la comunicación intercultural.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Estados Unidos"
)

file_student20 = URI.open("https://images.unsplash.com/photo-1526781480235-d79b4866aa9c?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODN8fGVzdHVkaWFudGVzfGVufDB8fDB8fHww")
user_student20.photo.attach(io: file_student20, filename: "federica_image.png", content_type: "image/png")
user_student20.save!


puts "creando teachers"
# Teacher 1
user_teacher1 = User.create!(
  email: "juan.perez@gmail.com",
  role: 1,
  password: "123456",
  first_name: "María",
  last_name: "García",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-12-28".to_date,
  about_me: "Descripción: Soy una profesora apasionada por la enseñanza del inglés. Con más de 10 años de experiencia, he ayudado a estudiantes de todas las edades a mejorar sus habilidades lingüísticas. Mi enfoque es interactivo y personalizado, adaptándome a las necesidades individuales de cada estudiante.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Japón"
)

# Imagen para el Teacher 1
file_teacher1 = URI.open("https://images.unsplash.com/photo-1567168539593-59673ababaae?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTAyfHxlc3R1ZGlhbnRlc3xlbnwwfHwwfHx8MA%3D%3D")
user_teacher1.photo.attach(io: file_teacher1, filename: "federico_image.png", content_type: "image/png")
user_teacher1.save!

# Datos del Teacher 1
teacher_data1 = DataTeacher.create!(
  teaching_languages: "Español",
  teacher_description: "Con una maestría en Lingüística Aplicada y más de 15 años de experiencia en la enseñanza, ofrezco un enfoque integral y personalizado para cada estudiante. Mis lecciones van más allá de la gramática y el vocabulario, incorporando elementos culturales, expresiones coloquiales y anécdotas históricas para proporcionar una experiencia de aprendizaje enriquecedora.",
  usd_per_hour: 200,
  user: user_teacher1
)

# Teacher 2 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_teacher2 = User.create!(
  email: "ana.rodriguez@gmail.com",
  role: 1,
  password: "123456",
  first_name: "Julien",
  last_name: "Dubois",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-12-28".to_date,
  about_me: "Descripción: Como nativo francés, estoy comprometido a compartir la belleza de mi lengua materna. Mi enfoque se centra en la inmersión cultural y la práctica constante. Mis clases son dinámicas y divertidas, con énfasis en la comunicación efectiva.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Japón"
)

# Imagen para el Teacher 2
file_teacher2 = URI.open("https://images.unsplash.com/photo-1520466809213-7b9a56adcd45?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE2fHxlc3R1ZGlhbnRlc3xlbnwwfHwwfHx8MA%3D%3D")
user_teacher2.photo.attach(io: file_teacher2, filename: "federico_image.png", content_type: "image/png")
user_teacher2.save!

# Datos del Teacher 2
teacher_data2 = DataTeacher.create!(
  teaching_languages: "Español",
  teacher_description: "Mis clases van más allá de la gramática y el vocabulario; te sumergirás en la cultura alemana a través de literatura, música y conversaciones auténticas. Mi enfoque se centra en crear un ambiente de aprendizaje dinámico y alentador, donde cada lección sea una oportunidad para crecer y mejorar.",
  usd_per_hour: 200,
  user: user_teacher2
)

# Teacher 3 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_teacher3 = User.create!(
  email: "carlos.gutierrez@gmail.com",
  role: 1,
  password: "123456",
first_name: "Gabriela",
  last_name: "Morales",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-12-28".to_date,
  about_me: "Descripción: Como hablante nativa de español, me dedico a hacer que el aprendizaje del idioma sea accesible y atractivo. Utilizo métodos interactivos que incluyen juegos, música y películas para hacer que las lecciones sean estimulantes y efectivas.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Japón"
)

# Imagen para el Teacher 3
file_teacher3 = URI.open("https://images.unsplash.com/photo-1594077810908-9ffd89d704ac?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA0fHxlc3R1ZGlhbnRlc3xlbnwwfHwwfHx8MA%3D%3D")
user_teacher3.photo.attach(io: file_teacher3, filename: "federico_image.png", content_type: "image/png")
user_teacher3.save!

# Datos del Teacher 3
teacher_data3 = DataTeacher.create!(
  teaching_languages: "Español",
  teacher_description: "Mis lecciones son dinámicas, llenas de juegos, música y conversaciones reales. Me esfuerzo por crear un ambiente acogedor donde cada estudiante se sienta cómodo y motivado para hablar. Además de enseñar el idioma, te llevaré a explorar la riqueza cultural de los países de habla hispana.",
  usd_per_hour: 200,
  user: user_teacher3
)

# Teacher 4 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_teacher4 = User.create!(
  email: "laura.martinez@gmail.com",
  role: 1,
  password: "123456",
first_name: "Hans",
  last_name: "Müller",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-12-28".to_date,
  about_me: "Descripción: Con una sólida formación académica y años de experiencia en la enseñanza del alemán, me esfuerzo por hacer que el proceso de aprendizaje sea desafiante y gratificante. Mis lecciones incluyen tanto la gramática como la cultura alemana para una comprensión integral del idioma.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Japón"
)

# Imagen para el Teacher 4
file_teacher4 = URI.open("https://images.unsplash.com/photo-1496317899792-9d7dbcd928a1?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE4fHxlc3R1ZGlhbnRlc3xlbnwwfHwwfHx8MA%3D%3D")
user_teacher4.photo.attach(io: file_teacher4, filename: "federico_image.png", content_type: "image/png")
user_teacher4.save!

# Datos del Teacher 4
teacher_data4 = DataTeacher.create!(
  teaching_languages: "Español",
  teacher_description: "Mis clases van más allá de la gramática y el vocabulario; te sumergirás en la cultura alemana a través de literatura, música y conversaciones auténticas. Mi enfoque se centra en crear un ambiente de aprendizaje dinámico y alentador, donde cada lección sea una oportunidad para crecer y mejorar.",
  usd_per_hour: 200,
  user: user_teacher4
)

# Teacher 5 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
user_teacher5 = User.create!(
  email: "alejandro.sanchez@gmail.com",
  role: 1,
  password: "123456",
  first_name: "Li",
  last_name: "Wei",
  country: "Argentina",
  city: "Buenos Aires",
  date_of_birth: "2000-12-28".to_date,
  about_me: "Descripción: Como hablante nativa de chino mandarín, me dedico a compartir la riqueza de mi idioma y cultura. Mis lecciones se centran en la escritura, la pronunciación y la comprensión oral. Utilizo materiales auténticos para una inmersión efectiva.",
  native_language: "Inglés",
  other_languages: "Japanese",
  learning_languages: "Inglés",
  objectives: "Viajar a Japón"
)

# Imagen para el Teacher 5
file_teacher5 = URI.open("https://plus.unsplash.com/premium_photo-1679547202933-370797093cc9?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTI5fHxlc3R1ZGlhbnRlc3xlbnwwfHwwfHx8MA%3D%3D")
user_teacher5.photo.attach(io: file_teacher5, filename: "federico_image.png", content_type: "image/png")
user_teacher5.save!

# Datos del Teacher 5
teacher_data5 = DataTeacher.create!(
  teaching_languages: "Español",
  teacher_description: "Mis lecciones son un viaje emocionante que abarca desde la caligrafía hasta la pronunciación, desde los caracteres hasta las expresiones cotidianas. Me encanta integrar la cultura china en mis clases, utilizando música, cuentos y tradiciones para ofrecer una inmersión auténtica. Mi enfoque es paciente y adaptativo, y siempre estoy dispuesta a ajustar mis métodos para satisfacer tus necesidades individuales de aprendizaje.",
  usd_per_hour: 200,
  user: user_teacher5
)


puts "creando teaching languages sessions"
teaching_language_session_01 = TeachingLanguageSession.create!(
  language: "Portugués",
  user: user_teacher1
)

teaching_language_session_02 = TeachingLanguageSession.create!(
  language: "Inglés",
  user: user_teacher1
)

teaching_language_session_03 = TeachingLanguageSession.create!(
  language: "Español",
  user: user_teacher1
)

teaching_language_session_04 = TeachingLanguageSession.create!(
  language: "Portugués",
  user: user_teacher2
)

teaching_language_session_05 = TeachingLanguageSession.create!(
  language: "Inglés",
  user: user_teacher2
)

teaching_language_session_06 = TeachingLanguageSession.create!(
  language: "Español",
  user: user_teacher2
)

teaching_language_session_07 = TeachingLanguageSession.create!(
  language: "Portugués",
  user: user_teacher3
)

teaching_language_session_08 = TeachingLanguageSession.create!(
  language: "Inglés",
  user: user_teacher3
)

teaching_language_session_09 = TeachingLanguageSession.create!(
  language: "Español",
  user: user_teacher3
)

puts "creando bookings"
booking01 = Booking.create!(
  user: user_student1,
  teaching_language_session: teaching_language_session_01,
  date: "2023-12-17".to_date,
  time_in: "19:00:00 -0300".to_time
)

booking02 = Booking.create!(
  user: user_student1,
  teaching_language_session: teaching_language_session_01,
  date: "2023-12-18".to_date,
  time_in: "19:00:00 -0300".to_time
)
booking03 = Booking.create!(
  user: user_student1,
  teaching_language_session: teaching_language_session_01,
  date: "2023-12-19".to_date,
  time_in: "19:00:00 -0300".to_time
)
booking04 = Booking.create!(
  user: user_student1,
  teaching_language_session: teaching_language_session_01,
  date: "2023-12-20".to_date,
  time_in: "19:00:00 -0300".to_time
)
