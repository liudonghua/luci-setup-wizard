m=Map("network",translate("Set LAN"))

lan=m:section(NamedSection,"lan",translate("Local Network"))

ip=lan:option(Value,"ipaddr",translate("IP4 Address"))
ip.datatypes="ip4addr"

return m