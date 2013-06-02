RSpec::Matchers.define :be_named do |expected|
  match do |thing|
    thing.name == expected
  end
end
