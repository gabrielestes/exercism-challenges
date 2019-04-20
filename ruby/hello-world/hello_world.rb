class HelloWorld
  def self.hello(*names)
    names.empty? ? 'Hello, World!' : "Hello, #{names.first}!"
  end
end
