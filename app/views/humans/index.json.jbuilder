# frozen_string_literal: true

json.array! @humans, partial: 'humans/human', as: :human
