# rspec app_spec.rb

require 'rspec'

require_relative './app.rb'

RSpec.describe "Prices calculator", type: :model do
  let(:data)          { JSON.parse(File.read('data.json')) }
  let(:output)        { JSON.parse(File.read('output.json')) }

  pending("calculates prices")
end