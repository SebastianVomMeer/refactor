$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'refactor'
require 'group_helpers'

RSpec.configure do |c|
  c.include GroupHelpers
end

RSpec::Matchers.define :be_a_file do |expected|
  match do |actual|
    File.exist?(actual)
  end
end