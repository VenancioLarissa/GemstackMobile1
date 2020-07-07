require "appium_lib"
require "appium_console"
require "pry"

# Este arquivo foi criado para carregar o conteudo do appium.txt
caps = Appium.load_appium_txt file: File.expand_path("caps/android.txt", __dir__), verbose: true

# carrega os capabilities
Appium::Driver.new(caps, true)

# Auxilia os métodos dentro do cucumber
Appium.promote_appium_methods Object
