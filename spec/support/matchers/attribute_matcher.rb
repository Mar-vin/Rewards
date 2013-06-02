RSpec::Matchers.define :have_character_attributes do
  define_method :attritbute_list do
    %i(charisma constitution dexterity intelligence strength wisdom)
  end

  match do |thing|
    thing.character_attributes.keys == attritbute_list
  end

  failure_message_for_should do |actual|
    "expected #{actual.character_attributes.keys} to include all of #{attritbute_list}"
  end
end
