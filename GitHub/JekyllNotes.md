# GitHub/Jekyll Notes

## Build Problems
I wanted to use the latest Jekyll release, 4.3.3, for one of my GitHub websites. Not having access to a PC, I used GitHub Codespace. I edited my Gemfile and Jekyll config file, _config.yml.

I've never programmed in Ruby, so I don't know the in's & out's of Ruby, the Gemfile and Gemfile.lock. I got in a situation where the Jekyll page build failed. No matter what I tried, I was stuck in a *"maze of twisty passages all alike"*[^10]. It was like *"Windows DLL Hell"*[^11], but this was Ruby's *"Dependency Hell"*[^12]. It wasn't until I *"timewarped"*[^13] back to July 31, 2024, my last last successful buiild, that I was able to recover.

On the RubyGems website, I saw dependencies such as, >= version.X, < version.Y, and = version.Z. I'd guess that for those gem dependencies with an equal only work with that particular version.

I created a table of Jekyll versions with their release date. Likewise, I created a table of github-pages with their release date with a column for the Jekyll release that it is compatible compatible with.

Looking in the github-pages repo, I found numerous open issues concerning github-pages and Jekyll, including one still open from 2019: [Support for Jekyll 4.0](https://github.com/github/pages-gem/issues/651).

```
/opt/hostedtoolcache/Ruby/3.2.4/x64/bin/bundle config --local path /home/runner/work/RalphHightower/RalphHightower/vendor/bundle
/opt/hostedtoolcache/Ruby/3.2.4/x64/bin/bundle config --local deployment true
Cache key: setup-ruby-bundler-cache-v6-ubuntu-22.04-x64-ruby-3.2.4-wd-/home/runner/work/RalphHightower/RalphHightower-with--without--only--v-1-Gemfile.lock-63a9550da5f0311edc6286f2ad3303eefd7049622750c3c0af0928a51fbe23eb
/opt/hostedtoolcache/Ruby/3.2.4/x64/bin/bundle install --jobs 4
The dependencies in your gemfile changed, but the lockfile can't be updated because frozen mode is set

You have added to the Gemfile:
* github-pages (~> 232)

You have deleted from the Gemfile:
* github-pages (~> 2321)
* jekyll-avatar (~> 0.8.0)
* jekyll-github-metadata (~> 2.16, >= 2.16.1)
* jekyll-mentions (~> 1.6)
* jekyll-optional-front-matter (~> 0.3.2)
* jekyll-seo-tag (~> 2.8)
* jekyll-sitemap (~> 1.4)
* liquid (~> 4.0.4)

Run `bundle install` elsewhere and add the updated Gemfile.lock to version control.
If this is a development machine, remove the Gemfile freeze by running `bundle config set frozen false`.
Error: The process '/opt/hostedtoolcache/Ruby/3.2.4/x64/bin/bundle' failed with exit code 16
```

The github-pages 2321 was a mistake that I didn't catch right away.

## Jekyll Version History

| [Jekyll Release](https://github.com/jekyll/jekyll/releases) | Release Date |
|---|---|
| 4.3.3 | 2023-12-27 |
| 4.3.2 | 2023-01-20 |
| 4.3.1 | 2022-10-26 |
| 4.3.0 | 2022-10-20 |
| 4.2.2 | 2022-03-03 |
| 4.2.1 | 2021-09-27 |
| 3.9.4 | 2023-12-26 |
| 3.9.3 | 2023-01-29 |
| 3.9.2 | 2022-03-28 |
| 3.9.1 | 2021-04-08 |

## GitHub Pages

| [github-pages Version](https://rubygems.org/gems/github-pages/versions/232) | Date Released | [Jekyll Runtime Dependencies](https://rubygems.org/gems/github-pages/versions/232) |
|---|---|---|
| 232 | 2024-08-06 | = 3.10.0 |
| 231 | 2024-02-15 | = 3.9.5 |
| 230 | 2024-02-13 | = 3.9.5 |
| 229 | 2024-02-06 | = 3.9.5 |
| 228 | 2023-02-01 | = 3.9.3 |

[^10]: you are in a maze of twisty passages all alike: text passage from text-based adventure game, [Colossal Cave Adventure](https://en.wikipedia.org/wiki/Colossal_Cave_Adventure?wprov=sfla1)
[^11]: [DLL Hell](https://en.wikipedia.org/wiki/DLL_Hell?wprov=sfla1): term for the complications that arise when one works with dynamic-link libraries (DLLs) used with Microsoft Windows operating systems, particularly legacy 16-bit editions, which all run in a single memory space.<br /><br />DLL hell can manifest itself in many different ways wherein applications neither launch nor work correctly.
<br /><br />
DLL hell is the Windows ecosystem-specific form of the general concept dependency hell.
[^12]: [Dependency hell](https://en.wikipedia.org/wiki/Dependency_hell?wprov=sfla1): colloquial term for the frustration of some software users who have installed software packages which have dependencies on specific versions of other software packages.
The dependency issue arises when several packages have dependencies on the same shared packages or libraries, but they depend on different and incompatible versions of the shared packages. If the shared package or library can only be installed in a single version, the user may need to address the problem by obtaining newer or older versions of the dependent packages. This, in turn, may break other dependencies and push the problem to another set of packages.
[^13]: [The Rocky Horror Picture Show](https://en.wikipedia.org/wiki/The_Rocky_Horror_Picture_Show?wprov=sfla1)

| Jekyll |
|---|
| [Jekyll](https://github.com/jekyll) |
| [jekyll/jekyll: :globe_with_meridians: Jekyll is a blog-aware static site generator in Ruby](https://github.com/jekyll/jekyll) |
| [jekyll/minima: Minima is a one-size-fits-all Jekyll theme for writers.](https://github.com/jekyll/minima) |
| [Jekyll • Simple, blog-aware, static sites / Transform your plain text into static websites and blogs](https://jekyllrb.com/) |
| [Quickstart / Jekyll • Simple, blog-aware, static sites](https://jekyllrb.com/docs/) |
| [Resources / Jekyll • Simple, blog-aware, static sites](https://jekyllrb.com/resources/) |
| [jekyll-plugin · GitHub Topics](https://github.com/topics/jekyll-plugin) |
| [Jekyll Admin](https://jekyll.github.io/jekyll-admin/) |
| [jekyll/jekyll-admin: A Jekyll plugin that provides users with a traditional CMS-style graphical interface to author content and administer Jekyll sites.](https://github.com/jekyll/jekyll-admin) |

| Ruby |
|---|
| [ruby/ruby: The Ruby Programming Language](https://github.com/ruby/ruby) |
| [ruby/setup-ruby: An action to download a prebuilt Ruby and add it to the PATH in 5 seconds](https://github.com/ruby/setup-ruby) |
| [Ruby Programming Language](https://www.ruby-lang.org/en/)
| [RubyGems.org / your community gem host](https://rubygems.org/)
| [RubyGems](https://github.com/rubygems) |
