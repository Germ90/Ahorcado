When(/^inicio la aplicacion$/) do
  visit '/'
end

Then(/^veo la palabra "(.*?)"$/) do |titulo|
  last_response.should have_xpath("//h1") do |t|
	t.should contain (titulo)
	end

end

When(/^ingresa la letra "(.*?)" and clickea "(.*?)"$/) do |letra, verif|
  fill_in("intento", :with => letra)
  click_button(verif)
	#puts last_response.body
end

Then(/^los intentos quedan en "(.*?)"$/) do |intento|
  last_response.should have_xpath("//p") do |t|
	t.should contain (intento)
	end
end


Then(/^se muestra en pantalla la letra "(.*?)"$/) do |intento|
  last_response.should have_xpath("//p") do |t|
	t.should contain (intento)
	end
end

Then(/^veo la palabra en pantalla "(.*?)"$/) do |estado|
  last_response.should have_xpath("//p") do |t|
	t.should contain (estado)
	end
end

