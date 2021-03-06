-- default biome functions that get called if we can't find a a specific biome that works for us
CHEST_LEVEL = 3
dofile_once("data/scripts/director_helpers.lua")
dofile_once("data/scripts/biome_scripts.lua")

RegisterSpawnFunction( 0xffffeedd, "init" )
RegisterSpawnFunction( 0xffb4a00a, "spawn_fish" )

g_fish =
{
	total_prob = 0,
	-- add skullflys after this step
	{
		prob   		= 0.3,
		min_count	= 3,
		max_count	= 5,    
		entity 	= "data/entities/animals/fish.xml"
	},

	{
		prob   		= 0.3,
		min_count	= 1,
		max_count	= 3,    
		entity 	= "data/entities/animals/fish_large.xml"
	},

	{
		prob   		= 0.15,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/eel.xml"
	},

	{
		prob   		= 0.2,
		min_count	= 2,
		max_count	= 4,    
		entity 	= "data/entities/animals/crab.xml"
	},

	{
		prob   		= 0.05,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/items/lightsaber.xml"
	},
}

function init( x, y, w, h )
	-- LoadPixelScene( "data/biome_impl/mountain_lake.png", "", x, y, "", true )
	-- LoadPixelScene( "data/biome_impl/mountain_lake_top.png", "", x, y-88, "", true )
end

function spawn_fish(x, y)
	spawn(g_fish,x,y)
end