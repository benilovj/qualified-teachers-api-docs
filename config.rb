require "govuk_tech_docs"
require_relative "lib/extensions/govuk_tech_docs/api_reference/api_reference_renderer.rb"

system 'npx openapi-merge-cli'

GovukTechDocs.configure(self)
