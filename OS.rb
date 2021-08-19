require 'os'

def my_os
  if OS.windows?
    "Windows"
  elsif OS.linux?
    "Linux"
  elsif OS.mac?
    "OSX"
  else
    "Não encontrei seu S.O :("
  end
end

puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} bits e o S.0 é #{my_os}"
