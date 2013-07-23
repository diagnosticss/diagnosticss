require "bundler/gem_tasks"

DEST_FILE = "lib/diagnosticss/diagnosticss.css"
SOURCE_FILE = "#{DEST_FILE}.scss"

task :default => :compile

desc "Compiles diagnostic .scss to plain css"
task :compile do
  exec "bundle exec sass --style compressed #{SOURCE_FILE} #{DEST_FILE}"
end

desc "Watch diagnostic .scss for changes"
task :watch do
  exec "bundle exec sass --style compressed --watch #{SOURCE_FILE}:#{DEST_FILE}"
end
