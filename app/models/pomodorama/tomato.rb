module Pomodorama
  class Tomato
    include Mongoid::Document
    include Mongoid::Timestamps

    field :started_at,  type: DateTime
    field :stopped_at,  type: DateTime
    field :state,       type: String

    validates :started_at,  presence: true
    validates :state,       presence: true
  end
end
