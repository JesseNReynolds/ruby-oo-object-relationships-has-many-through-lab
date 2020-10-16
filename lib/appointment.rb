class Appointment
    attr_accessor
    attr_reader :doctor, :patient, :date
    attr_writer

    @@all = []

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def initialize(date, patient, doctor)
        @doctor = doctor
        @patient = patient
        @date = date
        save
    end

end
