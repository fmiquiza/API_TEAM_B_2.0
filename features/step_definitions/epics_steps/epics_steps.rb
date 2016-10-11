And(/^I want to create an epic with the (.*) (.*)$/) do |attribute, name_project|
  @body = {attribute => name_project}
end

When(/^Sending a POST request to (.*) endpoint with project id (.*)$/) do |endpoint, project_id|
  require_relative '../../../src/requests/Epics/epics_post'
  @code, @response = EpicsPost(@client, endpoint, project_id, @body)
end

And(/^I expect (.*) of epic will be (.*)$/) do |attribute, name|
  actual_name = @response.fetch(attribute)
  expect(name).to eql(actual_name)
end