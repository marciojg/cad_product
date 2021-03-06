# frozen_string_literal: true

Rails.application.config.content_security_policy do |policy|
  policy.connect_src :self, :https, 'http://localhost:3009', 'ws://localhost:3009', 'http://localhost:3035', 'ws://localhost:3035' if Rails.env.development?
end
