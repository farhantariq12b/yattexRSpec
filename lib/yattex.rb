# frozen_string_literal: true

require 'rspec'
require 'json'
require 'fileutils'


module Yattex
  # Your code goes here...
  def runTests
    
    @inputArray = [];

    if(File.exist?('.yattex'))
      FileUtils.remove_dir(".yattex")
    end

    Dir.mkdir(".yattex")

    def getDecorators 
      value = ""
      puts("Please Enter test decorator name: ") 
      value << gets
      if(value.strip.empty?)
        getDecorators
      else
        @inputArray << value
        askToExit
      end
    end


    def askToExit
      value1 = ""
      puts("Do you want to add more?(y/n)")
      value1 << gets
      value1 = value1.chomp
      if ["y", "yes"].include?(value1.downcase)
        getDecorators
      elsif ["n", "no"].include?(value1.downcase)
        puts("Your entered decorators are : #{@inputArray.map!(&:chomp)}")
      else
        askToExit
      end
    end

    getDecorators

    json = JSON.generate(@inputArray)

    File.open(".yattex/decorators.json", "w") do |f|
      f.write(json)
    end

    # Set the output file
    RSpec.configuration.add_formatter('html', ".yattex/report.html")

    # Run the tests
    spec_pattern = File.expand_path('spec/**/*_spec.rb')
    spec_files = Dir.glob(spec_pattern)


    RSpec::Core::Runner.run(spec_files)
  end
end
 