source "https://rubygems.org"
#gemspec

gem "jekyll", ENV["JEKYLL_VERSION"] if ENV["JEKYLL_VERSION"]
gem "kramdown-parser-gfm" if ENV["JEKYLL_VERSION"] == "~> 3.9"
# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!
# gem "jekyll", "~>3.6.0"
gem "rake"
gem "json"

# If you want to use GitHub Pages, remove the "gem "jekyll"" above and
# uncomment the line below. To upgrade, run `bundle update github-pages`.
# gem "github-pages", group: :jekyll_plugins

# If you have any plugins, put them here!
group :jekyll_plugins do
# { 2024-06-29 @RalphHightower — These are my additions from the generic Gemfile
gem "github-pages"
gem "jekyll-avatar"
gem "jekyll-github-metadata"
gem "jekyll-mentions"
gem "jekyll-seo-tag"
gem "jekyll-sitemap"
gem "liquid"
gem "minima"
# } 2024-06-29 @RalphHightower 
end
