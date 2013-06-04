require 'spec_helper'

shared_examples_for 'an unary skill' do
  let(:skill) { described_class.new }

  it 'responds_to execute with params' do
    expect{
      skill.execute
    }.to raise_error 'wrong number of arguments (0 for 1+)'
  end
end

shared_examples_for 'a binary skill' do
  let(:skill) { described_class.new }

  it 'responds_to execute with params' do
    expect{
      skill.execute
    }.to raise_error 'wrong number of arguments (0 for 2)'
  end
end

describe Skills::Woodcutting do
  it_behaves_like 'an unary skill'
end

describe Skills::Gathering do
  it_behaves_like 'an unary skill'
end

describe Skills::Persuasion do
  it_behaves_like 'a binary skill'
end

describe Skills::Building do
  it_behaves_like 'a binary skill'
end
