require 'rake'
require 'fileutils'
require 'erb'

desc "Clone template for the next day's challenge"
task :next_day do
  max_days = 31
  template_dir = '.template'
  base_day_name = 'Day'

  # Find the next available day number
  next_day_num = (1..max_days).detect { |num| !File.directory?("#{base_day_name}#{num}") }
  raise "All 31 days have been generated." unless next_day_num

  new_day_dir = "#{base_day_name}#{next_day_num}"
  puts "Creating directory for #{new_day_dir}"

  # Clone the template directory
  FileUtils.cp_r(template_dir, new_day_dir)

  # Render the ERB template for solution.rb
  @module_name = "#{base_day_name}#{next_day_num}"
  template = ERB.new(File.read(File.join(new_day_dir, 'solution.rb.erb')))
  File.open(File.join(new_day_dir, 'solution.rb'), 'w') do |file|
    file.puts template.result(binding)
  end

  puts "#{new_day_dir} has been set up successfully."
end
