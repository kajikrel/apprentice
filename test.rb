class Main

  def initialize(name)
    @name = name
  end

  def to
    "私は#{@name}です"
  end

end

a = Main.new("kaji")
puts a.to
