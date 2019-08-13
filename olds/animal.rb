class Animal
  def initialize(name)
    @name = name
  end

  def name= name
    @name = name
  end

  def name
    @name + "\n"
  end
end
