# Require any additional compass plugins here.

# Set this to the root of your project when deployed:
http_path = "../"
css_dir = "dist/css"
sass_dir = "sass"
images_dir = "img"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = :expanded

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = false

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false

preferred_syntax = :scss


# Uncomment to make sprites names static, e.g. sprites-123asda.png -> sprites.png

# on_sprite_saved do |filename|
#   if File.exists?(filename)
#     FileUtils.cp filename, filename.gsub(%r{-s[a-z0-9]{10}\.png$}, '.png')
#   end
# end
#
# on_stylesheet_saved do |filename|
#   if File.exists?(filename)
#     css = File.read filename
#     File.open(filename, 'w+') do |f|
#       f << css.gsub(%r{-s[a-z0-9]{10}\.png}, '.png')
#     end
#   end
# end