class DroidScreens
  attr_accessor :login, :dash

  def initialize
    @login = LoginScreen.new
    @dash = DashScreen.new
  end
end
