# Rails 6 application template
# Usage: rails new [app_name] -m https://raw.githubusercontent.com/thewillgabriel/starting-block/master/template.rb -d postgresql

RAILS_VERSION = ">= 6.0.0"

def confirm_rails_version
  required_version = Gem::Requirement.new(RAILS_VERSION)
  current_version = Gem::Version.new(Rails::VERSION::STRING)
  return if required_version.satisfied_by?(current_version)

  puts "Please install Rails #{RAILS_VERSION} to use this template. Aborting."
  exit 1
end

def build_template!
  confirm_rails_version

  add_gems
  setup_gems
end

def add_gems
  # Call add methods here
end

def setup_gems
  # Call setup gems here
end

def gemfile_categories
  append_to_file 'Gemfile' do
    <<~RUBY
      # APIs

      # Frontend

      # Tools

    RUBY
  end
end

# This will launch the template build process
build_template!
