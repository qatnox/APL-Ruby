# Checks if the string is a valid IPv4-address
def valid_address(address)

  ipv4_pattern = /^(25[0-5]|2[0-4]\d|1\d\d|[1-9]\d|\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]\d|\d)){3}$/

  return !!(address =~ ipv4_pattern)
end

# Gets the address as an argument from the command line
ip_address = ARGV[0]

if ip_address
  if valid_address(ip_address)
    puts "true"
  else
    puts "false"
  end
else
  puts "Enter the IPv4 address!"
end
