desc 'Build site and save static HTML files'
task :build do
  exec("bundle exec jekyll build --future --trace")
end

desc 'Start the development server bound to http://localhost:4000'
task :serve do
  exec("bundle exec jekyll serve --baseurl '' --trace --future")
end

desc 'Continuously rebuild incrementally as you make changes. http://localhost:4000'
task :develop do
  exec("bundle exec jekyll serve --baseurl '' --trace --future --watch --incremental")
end
