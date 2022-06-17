require 'govuk_tech_docs/api_reference/api_reference_renderer'

module Extensions
  module GovukTechDocs
    module ApiReference
      module Renderer
        def get_renderer(file)
          if file == "schema.html.erb"
            template_path = File.join(File.dirname(__FILE__), "templates/" + file)
            template = File.open(template_path, "r").read
            ERB.new(template)
          else
            super(file)
          end
        end
      end
    end
  end
end

class GovukTechDocs::ApiReference::Renderer
  prepend Extensions::GovukTechDocs::ApiReference::Renderer
end
