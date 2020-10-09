class Doctor 
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
    Appointment.all << appointment
    appointment
  end
  
  def appointments
    Appointment.all.select { |appointment|
      appointment.doctor == self
    }
  end
  
  def patients
    self.appointments.collect { |appointment|
      appointment.patient
    }
  end
  
  
  
  
end