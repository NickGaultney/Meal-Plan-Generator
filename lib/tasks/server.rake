desc 'Start Rails Server'
task :start do
  system("screen -dmS rails rails s -b 0.0.0.0")
end

desc 'Stop Rails Server'
task :stop do
  system("screen -X -S rails quit")
end

desc 'View Rails Server'
task :view do
  system("screen -r rails")
end

desc 'View all servers'
task :show do
  system("screen -ls")
end
