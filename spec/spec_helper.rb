require 'fileutils'
require 'rubygems'
gem 'minitest'
require 'minitest/autorun'

require File.join(File.dirname(__FILE__), '..', 'lib', 'envyable')

def destination_root(opts={})
  dir = File.join(File.dirname(__FILE__), "sandbox")
  FileUtils.mkdir_p(dir)
  FileUtils.touch("#{dir}/.gitignore") if opts[:with_gitignore]
  dir
end
