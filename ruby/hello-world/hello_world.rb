class HelloWorld
  def hello(*names)
    if names.empty?
      'Hello, World!'
    else
      "Hello, #{names.first}!"
    end
  end
end