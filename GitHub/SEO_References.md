---
layout: page
title: GitHub/SEO Resources 
#permalink: /GitHub/
---

## SEO Resource Definitions

| SEO Resources | Description |
|---|---|
| [Schema.org - Schema.org](https://schema.org/) | Schema.org is a collaborative, community activity with a mission to create, maintain, and promote schemas for structured data on the Internet, on web pages, in email messages, and beyond. |
| [JSON-LD - JSON for Linking Data](https://json-ld.org/) | Data is messy and disconnected. JSON-LD organizes and connects it, creating a better Web. |
| [JSON-LD Playground](https://json-ld.org/playground/) | Play around with JSON-LD markup by typing out some JSON below and seeing what gets generated from it at the bottom of the page. Pick any of the examples below to get started. |
| [jekyll/jekyll-seo-tag: GitHub • A Jekyll plugin to add metadata tags for search engines and social networks to better index and display your site's content.](https://github.com/jekyll/jekyll-seo-tag) | A Jekyll plugin to add metadata tags for search engines and social networks to better index and display your site's content. |
| [jekyll-seo-tag • RubyGems.org](https://rubygems.org/gems/jekyll-seo-tag/versions/2.8.0) | A Jekyll plugin to add metadata tags for search engines and social networks to better index and display your site's content. |

<br />

## Ruby Gemfile Interfaces for GitHub Page
| [_config.yml • jekyll/jekyll-seo-tag: GitHub ](https://github.com/jekyll/jekyll-seo-tag/blob/master/docs/usage.md) |  Description |
|---|---|
| title | Your site's title (e.g., "**Ben's Awesome Site, The GitHub Blog, etc.**"), used as part of the title tag like **"Home / Ben's Awesome Site."** |
| tagline | A short description (e.g., **A blog dedicated to reviewing cat gifs**), used as part of the *title* tag like **"Ben's Awesome Site / A blog dedicated to reviewing cat gifs"** instead of **Ben's Awesome Site  Long description about a blog dedicated to reviewing cat gifs** that would be used when *page.title* is not defined. |
| description | A longer description used for the description meta tag. Also used as fallback for pages that don't provide their own ***description,*** and also as part of the page's title tag if neither ***page.title*** nor ***site.tagline*** has been defined. |
| url | The full URL to your site. Note: ***site.github.url*** will be used by default.
| author | global author information (see Advanced usage)


