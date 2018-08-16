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
end

Then(/^los intentos quedan en "(.*?)"$/) do |intento|
  last_response.should have_xpath("//p") do |t|
	t.should contain (intento)
	end
end

