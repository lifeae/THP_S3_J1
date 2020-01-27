require "pry"
puts "Début du programme"
class User
  attr_writer :mastercard #à mettre en en-tête de ta classe
  attr_reader :birthdate
  attr_accessor :email

  def update_birthdate(birthdate_to_update)
    @birthdate = birthdate_to_update
  end

  def read_mastercard
    return @mastercard
  end
  def greet
    puts "Bonjour, monde !"
  end

  def say_hello_to_someone(first_name)
    puts "Bonjour, #{first_name} !"
  end

  def show_itself
    print "Voici l'instance : "
    puts self
  end

  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_email
    return @email
  end
end #fin de ma classe

instance_users = User.new
julie = User.new
jean = User.new

julie.email = "julie@julie.com"
puts julie.email #=> "julie@julie.com"

#julie.say_hello_to_someone("Patrick") # va produire un "Bonjour, Patrick !"
#jean.say_hello_to_someone("Marie") # va produire un "Bonjour, Marie !"

#julie.show_itself
#jean.show_itself

#julie.read_email #cette ligne doit te retourner "nil" car par défaut, @email n'existe pas
#jean.read_email  #idem

#julie.update_email("julie@julie.com") #on change la valeur du @email de julie
#jean.update_email("jean@jean.com") #idem pour julien
#julie.update_email("julie@gmail.com")

#puts julie.read_email # tu devrais récupérer cette fois l'email: "julie@julie.com"
#puts jean.read_email # idem avec "jean@jean.com"

#julie.mastercard = "4242 4242 4242 4242" # va sauvegarder cette valeur dans la variable de l'instance julie
#julie.mastercard # retourne une erreur : on ne peut pas lire la variable facilement
#julie.read_mastercard # on a créé une méthode spécifique pour la lire. Ici ça retourne bien : => "4242 4242 4242 4242"

#julie.update_birthdate("01/12/1994")

binding.pry

puts "end of file"