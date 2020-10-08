require "pry"


class Patient
  
  attr_accessor :name
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  
  def self.all
    @@all
  end
  
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
    
    
  def appointments
    #binding.pry
    Appointment.all.select do |appointment|
      #binding.pry
      appointment.patient == self
    end
  end
  
  
  def doctors
    Appointment.all.collect do |appointment|
      if appointment.patient == self
        appointment.doctor
      end
    end
  end
  
  
end