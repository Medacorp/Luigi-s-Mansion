forceload add 749 -66 615 81
forceload add 803 -8 785 11
scoreboard players set #temp Time 2
execute unless loaded 749 102 -66 run scoreboard players set #temp Time 1
execute unless loaded 615 102 81 run scoreboard players set #temp Time 1
execute unless loaded 803 71 -8 run scoreboard players set #temp Time 1
execute unless loaded 785 81 11 run scoreboard players set #temp Time 1
execute unless score #exterior Ticking matches 1 run scoreboard players reset #temp Time
execute if score #temp Time matches 1 run schedule function luigis_mansion:room/exterior/load/set_loaded 1
execute if score #temp Time matches 2 run data modify storage luigis_mansion:data furniture set value {room:0,tags:["rank_reveal_painting"],no_ai:1b,animation:{frozen:1b}}
execute if score #temp Time matches 2 positioned 786.05 74 2 rotated -90 0 run function 3ds_remake:spawn_furniture/mansion_rank_portrait
execute if score #temp Time matches 2 run fill 803 71 -8 785 81 11 minecraft:brown_mushroom_block replace minecraft:yellow_concrete
execute if score #temp Time matches 2 if data storage luigis_mansion:data loaded_exterior{rank:"h"} run function luigis_mansion:room/exterior/load/loaded/rank/h
execute if score #temp Time matches 2 if data storage luigis_mansion:data loaded_exterior{rank:"g"} run function luigis_mansion:room/exterior/load/loaded/rank/g
execute if score #temp Time matches 2 if data storage luigis_mansion:data loaded_exterior{rank:"f"} run function luigis_mansion:room/exterior/load/loaded/rank/f
execute if score #temp Time matches 2 if data storage luigis_mansion:data loaded_exterior{rank:"e"} run function luigis_mansion:room/exterior/load/loaded/rank/e
execute if score #temp Time matches 2 if data storage luigis_mansion:data loaded_exterior{rank:"d"} run function luigis_mansion:room/exterior/load/loaded/rank/d
execute if score #temp Time matches 2 if data storage luigis_mansion:data loaded_exterior{rank:"c"} run function luigis_mansion:room/exterior/load/loaded/rank/c
execute if score #temp Time matches 2 if data storage luigis_mansion:data loaded_exterior{rank:"b"} run function luigis_mansion:room/exterior/load/loaded/rank/b
execute if score #temp Time matches 2 if data storage luigis_mansion:data loaded_exterior{rank:"a"} run function luigis_mansion:room/exterior/load/loaded/rank/a
execute if score #temp Time matches 2 if data storage luigis_mansion:data loaded_exterior{rank:"s"} run function 3ds_remake:room/exterior/load/loaded/rank/s
execute unless score #temp Time matches 1 run forceload remove 749 -66 615 81
execute unless score #temp Time matches 1 run forceload remove 803 -8 785 11
scoreboard players reset #temp Time