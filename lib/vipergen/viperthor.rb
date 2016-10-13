require 'thor'
require 'vipergen'

module Vipergen
  class ViperThor < Thor
	desc "generate", "Generate a VIPER module"
	option :language, :required => false, :default => 'swift', :type => :string, :desc => "The language of the generated module (swift, objc)"
	option :template, :required => false, :default => 'lavanapp', :type => :string , :desc => "Template for the generation"
	option :path, :required => true, :type => :string , :desc => "Path where the output module is going to be saved"
	def generate(name)
	   Vipergen::Generator.generate_viper(options[:template], options[:language], name, options[:path])
	end

	desc "templates", "Get a list of available templates"
	def templates()
		puts Vipergen::TemplateManager.templates_description()
	end
  end
end
