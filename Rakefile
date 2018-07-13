require 'rspec/core/rake_task'
require 'open3'
require 'os'

desc 'Task to test the project'
task :spec do
  puts 'Executing Spec.....'
  execute_and_stream('bundle install')
  execute_and_stream('bundle exec rspec')
end

def execute_and_stream(cmd)
  puts "running: #{cmd}"
  execute(cmd)
end

def execute(cmd)
  Open3.popen2e(cmd) do |_, stdout_err, wait_thr|
    while line = stdout_err.gets
      puts line
    end

    exit_status = wait_thr.value
    unless exit_status.success?
      abort "FAILED !!!"
    end
  end
end