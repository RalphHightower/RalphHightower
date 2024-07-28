source "https://rubygems.org"
#gemspec

gem "jekyll", ENV["JEKYLL_VERSION"] if ENV["JEKYLL_VERSION"]
gem "kramdown-parser-gfm" if ENV["JEKYLL_VERSION"] == "~> 3.9"
#gem “jekyll”, “~> 4.3”, “>= 4.3.3”
#gem “kramdown-parser-gfm”, “~> 1.1”
# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!
# gem "jekyll", "~>3.6.0"
#gem "rake", "~>12.3.3"
gem “rake”, “~> 13.2”, “>= 13.2.1”
gem “json”, “~> 2.7”, “>= 2.7.2”

# If you want to use GitHub Pages, remove the "gem "jekyll"" above and
# uncomment the line below. To upgrade, run `bundle update github-pages`.
gem "github-pages", group: :jekyll_plugins

# If you have any plugins, put them here!
group :jekyll_plugins do
# { 2024-06-29 @RalphHightower — These are my additions from the generic Gemfile
gem “jekyll-avatar”, “~> 0.8.0”
gem “jekyll-github-metadata”, “~> 2.16”, “>= 2.16.1”
gem “jekyll-last-modified-at”, “~> 1.3”, “>= 1.3.2”
gem “jekyll-mentions”, “~> 1.6”
gem “jekyll-optional-front-matter”, “~> 0.3.2”
gem “jekyll-seo-tag”, “~> 2.8”
gem "jekyll-sitemap", "~> 1.4"
gem “jekyll-tagging”, “~> 1.1”
gem “jekyll-spaceship”, “~> 0.10.2”
gem “liquid”, “~> 5.5”
gem “minima”, “~> 2.5”, “>= 2.5.1”
# jekyll-google_analytics: micro release, no active development 
gem “jekyll-google_analytics”, “~> 0.1.0”
# } 2024-06-29 @RalphHightower 
end
