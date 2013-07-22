require "bundler/gem_tasks"


task :default => :compile

desc "Compiles diagnostic .scss to plain css"
task :compile do
  exec "bundle exec sass lib/diagnosticss/diagnosticss.css.scss lib/diagnosticss/diagnosticss.css"
end
