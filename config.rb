# From https://github.com/startae/middleman-startae
# View Middleman configurations:
# http://localhost:4567/__middleman/config/


# Site Settings
# ----------------------------------------------
@google_analytics = ''
set :site_title, '網站名稱'
set :site_url, 'http://'
set :site_description, '預設敘述'
set :site_author, '作者名'
set :site_type, 'website'
set :site_og_image, 'images/fb.png'


# Slim HTML
# ----------------------------------------------
::Slim::Engine.set_default_options :format  => :html5
::Slim::Engine.set_default_options lang: I18n.locale, locals: {}


# i18n
# ----------------------------------------------
# activate :i18n, :mount_at_root => :'pt-BR'


# Livereload
# Reload the browser automatically whenever files change
# ----------------------------------------------
configure :development do
  activate :livereload, :no_swf => true, :host => "127.0.0.1"
  # activate :livereload
end


# Page options, layouts, aliases and proxies
# ----------------------------------------------

# autoprefixer
# ----------------------------------------------
# use Compass binary to compile your styles, you can easily integrate Autoprefixer with it. 
# require 'autoprefixer-rails'

# on_stylesheet_saved do |file|
#   css = File.read(file)
#   File.open(file, 'w') do |io|
#     io << AutoprefixerRails.process(css)
#   end
# end
# activate :autoprefixer

# Bower Config
# ----------------------------------------------
# Add bower's directory to sprockets asset path
after_configuration do

  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]

end


# Configure assets directories
# ----------------------------------------------
config[:css_dir] = 'assets/styles'
config[:js_dir] = 'assets/scripts'
config[:images_dir] = 'assets/images'
config[:fonts_dir] = 'assets/fonts'
config[:partials_dir] = 'partials'


# Other configurations
# ----------------------------------------------
set :trailing_slash, false


# Development-specific configuration
# ----------------------------------------------
configure :development do
  activate :directory_indexes
  set :debug_assets, true
  ::Slim::Engine.set_default_options :pretty => true
end


# Build-specific configuration
# ----------------------------------------------
configure :build do
  # Use relative URLs
  activate :relative_assets
  set :relative_links, true

  # Activate gzip
  # activate :gzip

  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Add asset fingerprinting to avoid cache issues
  activate :asset_hash

  # Enable cache buster
  activate :cache_buster

  # Compress PNGs after build (First: gem install middleman-smusher)
  require "middleman-smusher"
  activate :smusher
end
