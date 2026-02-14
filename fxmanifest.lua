fx_version "cerulean"

description ""
author "PRX Store"
version '1.0.0'
repository 'https://github.com/PRXStore/React-BoilerPlate'

lua54 'yes'

games {
  "gta5",
  "rdr3"
}

-- ui_page 'web/build/index.html'
ui_page 'http://localhost:5173' -- Dev

client_script "client/**/*"
server_script "server/**/*"
shared_script {"@ox_lib" , "shared/**/*" , 'shared.lua'}

files {
	'web/build/index.html',
	'web/build/**/*',
}
