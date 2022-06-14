require "govuk_tech_docs"

GovukTechDocs.configure(self)

system 'npx openapi-merge-cli'
