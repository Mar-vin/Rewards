RSpec::Matchers.define :have_coordinates do
  match do |thing|
    thing.coordinates.keys.sort == %i(x y z)
  end
end
