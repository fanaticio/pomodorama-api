require 'spec_helper'

describe Pomodorama::Tomato do
  it { should validate_presence_of(:started_at) }
  it { should validate_presence_of(:state) }
end
