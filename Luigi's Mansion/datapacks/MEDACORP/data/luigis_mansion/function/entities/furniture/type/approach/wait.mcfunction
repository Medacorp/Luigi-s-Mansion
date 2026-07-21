$execute positioned ^ ^ ^$(forward) unless entity @e[tag=luigi,distance=..1,nbt={data:{animation:{namespace:"luigis_mansion",id:"idle"}}},limit=1] run tag @e[tag=luigi,distance=..1,limit=1] add searcher
$execute as @e[tag=searcher,limit=1] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ^ ^ ^$(forward)",teleport:"~ ~ ~ ~-180 0"}
execute as @e[tag=searcher,limit=1] at @s run function luigis_mansion:entities/luigi/animation/set/idle
tag @e[tag=searcher,limit=1] remove searcher