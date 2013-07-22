require "bundler/gem_tasks"


task :default => :compile

desc "Compiles diagnostic .scss to plain css"
task :compile do
  source = "lib/diagnosticss/diagnosticss.css.scss"
  dest = "lib/diagnosticss/diagnosticss.css"
  exec "bundle exec sass --style compressed #{source} #{dest}"
end
