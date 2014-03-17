unless defined?(Motion::Project::Config)
  raise "The MotionKit gem must be required within a RubyMotion project Rakefile."
end


require 'motion-require'

Motion::Require.all(Dir.glob(File.expand_path('../motion-kit/**/*.rb', __FILE__)))
Motion::Require.all(Dir.glob(File.expand_path('../motion-kit-ios/**/*.rb', __FILE__)), platform: :ios)
Motion::Require.all(Dir.glob(File.expand_path('../motion-kit-osx/**/*.rb', __FILE__)), platform: :osx)
Motion::Require.all(Dir.glob(File.expand_path('../motion-kit-cocoa/**/*.rb', __FILE__)), platform: [:ios, :osx])
