source "https://rubygems.org"
#gemspec :name => "jekyll"

#gem "jekyll", "~> 4.3", ">= 4.3.3"
#gem "github-pages", "~> 231"

gem 'github-pages', group: :jekyll_plugins
gem "rake", "~> 13.0"

gem "nokogiri", "~> 1.7"
gem "rspec"


group :jekyll_optional_dependencies do
    gem "html-pipeline", "~> 3.2"
    gem "jekyll-coffeescript", "~> 2.0"
    gem "jekyll-default-layout", "~> 0.1.5"
    gem "jekyll-feed", "~> 0.17.0"
    gem "jekyll-gist", "~> 1.5"
    gem "jekyll-github-metadata", "~> 2.16", ">= 2.16.1"
    gem "jekyll-include-cache", "~> 0.2.1"
    gem "jekyll-optional-front-matter", "~> 0.3.2"
    gem "jekyll-readme-index", "~> 0.3.0"
    gem "jekyll-relative-links", "~> 0.7.0"
    gem "jekyll-sass-converter", "~> 3.0"
    gem "json", "~> 2.7", ">= 2.7.2"
    gem "kramdown", "~> 2.4"
    gem "liquid", "~> 5.5" 
    gem "safe_yaml", "~> 1.0", ">= 1.0.5"
#  gem "jekyll-docs", :path => "../docs" if Dir.exist?("../docs") && ENV["JEKYLL_VERSION"]
#  gem "matrix"
#  gem "mime-types", "~> 3.0"
end

group :site do
    gem "html-proofer", "~> 3.4" if ENV["PROOF"]
    
    gem "jekyll-avatar"
    gem "minima", "~> 2.5", ">= 2.5.1"
    gem "jekyll-default-layout", "~> 0.1.5"
    gem "jekyll-mentions"
    gem "jekyll-seo-tag"
    gem "jekyll-sitemap"
    gem "jemoji"
end
