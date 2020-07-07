Quando("acesso o app com {string} e {string}") do |email, tech|
  @screen.login.with(email, tech)
   
end
  
  Então("devo visualizar o titulo {string}") do |expect_title|
    result = @screen.dash.title(expect_title)
    expect(result.displayed?).to be true
  end

