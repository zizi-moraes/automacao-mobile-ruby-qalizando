module Actions

  def home
    @home ||= HomeScreen.new
  end

  def register_product
    @register_product ||= RegistrationScreen.new
  end

  def assert
    @assert ||= RegistrationAssert.new
  end

end