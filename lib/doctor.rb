class Doctor
    attr_accessor
    attr_reader :name
    attr_writer

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor == self
        end
    end

    def patients
        self.appointments.map do |this_docs_appt|
           this_docs_appt.patient
        end
    end

end
