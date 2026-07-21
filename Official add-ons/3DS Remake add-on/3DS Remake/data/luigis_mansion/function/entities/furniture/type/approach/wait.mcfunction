$execute positioned ^ ^ ^$(forward) unless entity @e[tag=luigi,distance=..1,nbt={data:{animation:{namespace:"luigis_mansion",id:"idle"}}},limit=1] run tag @e[tag=me,distance=..1,limit=1] add searcher_success
$execute as @e[tag=searcher_success,limit=1] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ^ ^ ^$(forward)",teleport:"~ ~ ~ ~-180 0"}
execute as @e[tag=searcher_success,limit=1] at @s run function luigis_mansion:entities/luigi/animation/set/idle
execute if entity @e[tag=searcher_success,limit=1] run tag @s add approach_triggered
tag @e[tag=searcher_success,limit=1] add talk
tag @e[tag=searcher_success,limit=1] remove searcher_success