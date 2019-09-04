class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person # we need to tell the program to raise our PartnerError when the argument passed into the get_married is not an instance of the Person class.
      raise PartnerError
    rescue PartnerError => error #The rescue method creates an instance of the PartnerError class and puts out the result of calling message on that instance.
        puts error.message
    else
    person.partner = self
  end
 class PartnerError < StandardError #include the custom error class inside of our Person class.
 end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
