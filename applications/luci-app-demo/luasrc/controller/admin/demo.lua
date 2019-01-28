-- Copyright 2019 Liu Donghua <shaphone@gmail.com>
-- Licensed to the public under the Apache License 2.0.

module("luci.controller.admin.demo", package.seeall)

function index()
	local fs = require "nixio.fs"
	local poe_config = {hideresetbtn		= true,
						hidesavebtn			= true,
						hideapplybtn		= true,
						next				= true,
						on_success_to		= luci.dispatcher.build_url("admin","demo","pppoe")
					}
					
	entry({"admin", "demo"}, firstchild(), _("demo"), 50).index = true
	
	entry({"admin","demo","pppoe"},cbi("admin_demo/pppoe",poe_config),nil)
	
	local lan_config = { hideresetbtn	= true,
						 hidesavebtn	= true,
						 last			= true
						}
						 
	entry({"admin","demo","lan"},cbi("admin_demo/lan",lan_config),nil)
	
end