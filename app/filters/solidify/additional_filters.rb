module Solidify
  module AdditionalFilters
    def default_errors(errors)
      view = @context.registers[:view]
      view.content_tag :div, class: 'errors' do
        view.content_tag :ul do
          view.safe_join(
            errors.map do |error|
              view.content_tag(:li, error)
            end
          )
        end
      end
    end

    def format_address(address); end

    def json(resource)
      JSON.dump(resource)
    end
  end
end
