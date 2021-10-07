desc 'Build site and save static HTML files'
task :build do
  exec("bundle exec jekyll build")
end

desc 'Start the development server bound to http://localhost:4000'
task :server do
  exec("bundle exec jekyll serve --baseurl '' --trace --watch --incremental")
end

task :serve => :server
task :develop => :server
