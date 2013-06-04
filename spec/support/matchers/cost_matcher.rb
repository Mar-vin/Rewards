RSpec::Matchers.define :cost do |expected|
  match do |thing|
    thing.costs.should == expected && thing.class.costs.should == expected
  end
end
