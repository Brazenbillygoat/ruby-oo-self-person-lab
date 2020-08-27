# your code goes here
require 'pry'

class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name, bank_account = 25)
    @name = name
    @bank_account = bank_account
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    @happiness = @happiness.clamp(0, 10)
  end

  def hygiene
    @hygiene = @hygiene.clamp(0, 10)
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def happy?
    self.happiness > 7 ? true : false 
  end

  def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"#topic politics: both lose 2 points of happiness returns string
      self.happiness -= 2
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"#topic is weather both add 1 happiness returns string
      self.happiness += 1
      friend.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end #neither hap stays same return string
    
  end

end


me = Person.new("hyrum", 20)
her = Person.new("amy", 50)

# me.call_friend(her)
# her.happiness

me.start_conversation(her, "politics")
