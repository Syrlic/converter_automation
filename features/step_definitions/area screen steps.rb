Given(/^I land on help popup$/) do
  text("Help")
end

When(/^I click on Got it button$/) do
  find_element(id:"button1").click
end

#Then(/^I land on "([^"]*)" screen$/) do |value|
 # find_element(id:"toolbar").find_element(xpath:"//android.widget.TextView[@text=#{value}]")
#end

When(/^I click on Swap button$/) do
  puts("User clicks on Swap button")
end

Then(/^I see "([^"]*)" in From header$/) do |value|
  find_element(id:"")
end

And(/^I see "([^"]*)" in To header$/) do |value|
  puts("To header values is #{value}")
end

And(/^I click on Clear button$/) do
  puts("User clicks on Clear button")
end

When(/^I enter "([^"]*)" to From field$/) do |value|
  puts("User entered value #{value}")
end

Then(/^I get "([^"]*)" in To field$/) do |value|
  puts("User sees #{value} in result field")
end

When(/^I click on From field$/) do
  find_element(id:"header_value_from").click
end

And(/^I press "([^"]*)" on soft keyboard$/) do |value|
  digits = value.split("")
  digits.each do |key|
  digit = Integer(key)
  press_keyboard 7 + digit
    end
end

Then(/^I get"([^"]*)" in To field$/) do |value|
  actual_value = find_element(id:"header_value_to").text
  if actual_value != value
    fail("Exspected value is #{value}, but actual value was #{actual_value}")
  end
end

When(/^I select "([^"]*)" from left column$/) do |value|
  find_element(id:"radio_group_from").find_element(xpath:"//android.widget.RadioGroup[@text=#{value}]").click
end


Then(/^I land on Area screen$/) do
  sleep(2)
  text("Area")
end