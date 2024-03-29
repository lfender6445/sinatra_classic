require 'rubygems'

def env
  (ENV['RACK_ENV'] || 'development').to_sym
end

gemfile = File.expand_path('../../Gemfile', __FILE__)

begin
  ENV['BUNDLE_GEMFILE'] = gemfile
  require 'bundler'
  Bundler.setup
rescue Bundler::GemNotFound => e
  STDERR.puts e.message
  STDERR.puts 'Try running `bundle install`.'
  exit!
end if File.exist?(gemfile)

Bundler.require(:default, env)

ROOT = Dir.pwd

Slim::Engine.set_default_options attr_wrapper: "'", disable_escape: true

Dir[
  "#{ROOT}/config/initializers/*.rb",
  "#{ROOT}/lib/**/*.rb",
  "#{ROOT}/app/**/*.rb"
].delete_if do |file_name|
    (file_name.match('app/views') || file_name.match('app/routes'))
end.each { |file| require file }


