require 'spec_helper'

describe Pomodorama::API::Entities::Tomato do
  subject { Pomodorama::API::Entities::Tomato }

  it { should represent(:state) }
  it { should represent(:started_at).format_with(:iso_timestamp) }
  it { should represent(:stopped_at).format_with(:iso_timestamp) }
end

