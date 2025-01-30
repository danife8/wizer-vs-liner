# frozen_string_literal: true

# config/initializers/inflections.rb
ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'human', 'humans'
  inflect.acronym 'API'
end
