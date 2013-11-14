Given(/^the following tomato exists:$/) do |table|
  Pomodorama::Tomato.create(table.hashes)
end

Given(/^the following tomatoes exist:$/) do |table|
  step "the following tomato exists:", table
end
