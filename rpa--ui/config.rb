###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

helpers do
  
  def is_page_selected(page)
    current_page.url == page ? "active" : ''
  end
  
  def in_page_link_or(id)
    if current_page.url == '/'
      '#' + "#{id}"
    else
      "index.html" + '#' + id
    end
  end
  
  def hero_services_link(id)
    if current_page.url == '/'
      '#' + "#{id}"
    else
      '/our-services.html#article'
    end
  end
  
end


set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Build-specific configuration
configure :build do
  
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
  set :relative_links, true
  
end
