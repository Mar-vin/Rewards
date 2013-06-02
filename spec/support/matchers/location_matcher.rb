RSpec::Matchers.define :have_a_location do
  match do |thing|
    thing.location.keys.sort == %i(x y z)
  end
end
