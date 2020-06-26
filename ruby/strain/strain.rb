class Array
  def keep
    select { |item| yield(item) }
  end

  def discard
    select { |item| !yield(item) }
  end
end
