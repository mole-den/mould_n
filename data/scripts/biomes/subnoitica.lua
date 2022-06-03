-- default biome functions that get called if we can't find a a specific biome that works for us
CHEST_LEVEL = 3
dofile_once("data/scripts/director_helpers.lua")
dofile_once("data/scripts/biome_scripts.lua")

RegisterSpawnFunction( 0xffffeedd, "init" )
RegisterSpawnFunction( 0xff528900, "spawn_mould" )


g_boss =
{
	total_prob = 0,

	{
		prob   		= 1,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/items/pickup/potion_mould.xml"
	},
}

function spawn_boss(x, y)
	spawn(g_boss,x,y)
end

function init( x, y, w, h )
	LoadPixelScene( "data/biome_impl/subnoitica.png", x, y)
end