# frozen_string_literal: true

module Requests
  module JsonHelpers
    def json
      @json ||= Json.parse(response.body)
    end
  end
end
