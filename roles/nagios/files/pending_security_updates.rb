#!/usr/bin/ruby
pending_package_count=`apt-get upgrade -s |grep Inst| grep -i security|wc -l`
case pending_package_count.chomp <=> "0"
when 0
  puts "OK - #{pending_package_count.chomp!} of packages pending."
  exit 0
when -1
  puts "WARNING - #{pending_package_count.chomp!} of packages pending."
  exit 1
when 1
  puts "CRITICAL - #{pending_package_count.chomp!} of packages pending."
  exit 2
else
  puts "UNKNOWN - #{pending_package_count.chomp!} of packages pending."
  exit 3
end