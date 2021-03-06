Then /^I should see listing prototypes tabular attributes$/ do
  output = tableish('table#listing_prototypes tr', 'td,th')
  data = output[0]
  data[0].should == 'Name'
  data[1].should == 'Action'

  data = output[1]
  data[0].should == Spree::Prototype.limit(1).order('name ASC').to_a.first.name
end
