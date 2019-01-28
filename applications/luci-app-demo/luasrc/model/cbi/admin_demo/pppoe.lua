m=Map("network",translate("Set PPPoE"))



pppoe=m:section( NamedSection,"wan",translate("PPPoE Account"))

username=pppoe:option(Value,"username",translate("Account"))

password=pppoe:option(Value,"password",translate("Password"))
password.datatypes="password"

m.on_before_save=function()
	m.uci:set("network","wan","proto","pppoe")
end 

return m