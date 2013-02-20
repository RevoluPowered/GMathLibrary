-- A Mathematical libray designed for use in games and rendering using Lua.
-- Its main reason for existance is to speed up garrysmod's slow c functions in LuaJIT.
-- However it works in normal lua too!
-- By Gordon MacPherson with assistance of divran.
local MATH = {}

MATH.Garrysmod = (VERSION ~= nil)

-- What modules are enabled?
MATH.VectorEnabled = true
MATH.AngleEnabled = true
MATH.QuaternionEnabled = true

if( MATH.Garrysmod ) then
	-- Properties for the server and client.
	-- Send the files to the client and include them.
	MATH.Clientside = true
	-- Include the files serverside.
	MATH.Serverside = true


	if( MATH.Garrysmod ) then
		if MATH.VectorEnabled then
			-- Serverside Includes.
			if SERVER and MATH.Serverside then
				include("Vector3.lua")
			end
			
			-- Clienside Includes.
			if MATH.Clientside then
				if CLIENT then
					include ("Vector3.lua")
				else
					AddCSLuaFile( "Vector3.lua")
				end
			end
		end
	else
		if MATH.VectorEnabled then
			dofile("Vector3")
		end
	end
end