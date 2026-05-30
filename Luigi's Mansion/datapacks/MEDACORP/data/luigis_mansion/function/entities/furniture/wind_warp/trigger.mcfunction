function luigis_mansion:entities/luigi/move/execute {execute:"positioned ~ ~ ~",teleport:"~ ~ ~ ~-180 0"}
function luigis_mansion:entities/luigi/animation/set/wind_warp
tag @s add wind_warping
tag @e[tag=me,limit=1] add wind_warping