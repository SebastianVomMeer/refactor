require 'spec_helper'

describe Refactor do

  context "inside test project" do

    before { setup_test_project }
    subject(:run) { Refactor.run('banned_user', 'ignored_user') }

    it 'renames relevant files' do
      run
      expect('app/model/banned_user.rb').to_not be_a_file
      expect('app/model/special/banned_user.rb').to_not be_a_file
      expect('app/model/ignored_user.rb').to be_a_file
      expect('app/model/special/ignored_user.rb').to be_a_file
    end

  end

  it 'has a version number' do
    expect(Refactor::VERSION).not_to be nil
  end

end
