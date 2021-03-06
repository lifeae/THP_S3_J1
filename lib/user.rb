require 'pry'

puts "Début du programme"

class User
  attr_accessor :email
  attr_accessor :age
  @@user_all = []
  
  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@user_all << self
  end

  def self.all
    @@user_all
  end
end

romain = User.new("romain.leporatti@laposte.net", 25)
theo = User.new("theo.leporatti@laposte.net", 19)
valentin = User.new("valentin.leporatti@laposte.net", 18)
katia = User.new("katia.leporatti@laposte.net", 51)
serge = User.new("serge.lporatti@lapsote.net", 52)

puts User.all

binding.pry

puts "Fin du programme"