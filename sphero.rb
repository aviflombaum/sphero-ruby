require 'bundler'
Bundler.require

Sphero.start '/dev/tty.Sphero-ORO-AMP-SPP' do
  roll 15, Sphero::FORWARD
  # keep_going 2
  #
  roll 15, Sphero::RIGHT
  # keep_going 2
  #
  roll 15, Sphero::LEFT

  roll 15, Sphero::BACKWARD
  # keep_going 2
  #
  # keep_going 2

  stop

  binding.pry
  ["red",`` "yellow", "green"].each do |c|
    roll
end
