require 'pry'
class Person
  attr_reader :name
  attr_accessor :bank_account
  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    self.happiness=(happiness)

    self.hygiene=(hygiene)
    # if happiness < 11
    #   @happiness = happiness
    # @original_happiness = happiness
    # # @happiness = @original_happiness

  end

  def happiness
    @happiness
  end

  def happiness=(happiness)
    if happiness > 10

      @happiness = 10
    elsif happiness < 0

      @happiness = 0
    else
      @happiness = happiness
    end
  end

  def hygiene
    @hygiene
  end

  def hygiene=(hygiene)
    if hygiene > 10

      @hygiene = 10
    elsif hygiene < 0

      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end

  def happy?
    @happiness = happiness
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    @hygiene = hygiene
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary_amount)
    @bank_account += salary_amount
     "all about the benjamins"
   end

  def take_bath
    binding.pry
    @hygiene = @hygiene + 4
    self.hygiene=(hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"

  end

  def work_out
    @happiness = @happiness + 2
    self.happiness=(happiness)
    @hygiene = @hygiene - 3
    self.hygiene=(hygiene)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"

    end

  end

end
