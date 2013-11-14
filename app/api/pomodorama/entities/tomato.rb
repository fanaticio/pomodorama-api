module Pomodorama
  module API
    module Entities
      class Tomato < Grape::Entity
        format_with(:iso_timestamp) do |datetime|
          datetime.kind_of?(Date) ? datetime.iso8601 : datetime
        end

        expose :_id
        expose :state
        expose :started_at, format_with: :iso_timestamp
        expose :stopped_at, format_with: :iso_timestamp
      end
    end
  end
end
