require 'time'
require 'pry'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
    @start_date = Time.parse(start_date_to_save)
    @duration = duration_to_save.to_i
    @title = title_to_save.to_s
    @attendees = attendees_to_save
  end

  def postpone_24h
    @start_date = @start_date + 24*60*60 
  end

  def end_date
    end_date = @start_date + duration
  end

  def is_past?
    if @start_date < Time.now then return true else return false
    end
  end

  def is_future?
    if @start_date > Time.now then return true else return false
    end
  end

  def is_soon?

  end

  def to_s 
    puts "Titre : #{@title}"
    puts "Date de début : #{@start_date}"
    puts "Durée : #{@duration}"
    puts "Invités : #{@attendees}"
  end
end

binding.pry

Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

=begin

    Un événement a une @start_date qui est de type Time (on y reviendra)
    Un événement a une @duration, qui est un integer qui représente le nombre de minutes
    Un événement a un @title, qui est un string
    Un événement a un ou plusieurs @attendees, qui est un array qui contient une liste d’e-mails
=end