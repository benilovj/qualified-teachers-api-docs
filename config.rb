require "govuk_tech_docs"
require_relative "lib/extensions/govuk_tech_docs/api_reference/api_reference_renderer.rb"

system 'npx openapi-merge-cli'
raise "Cannot run `npx openapi-merge-cli`. Check that Node is installed and matches the version in .nvmrc" if $?.exitstatus != 0

GovukTechDocs.configure(self)
