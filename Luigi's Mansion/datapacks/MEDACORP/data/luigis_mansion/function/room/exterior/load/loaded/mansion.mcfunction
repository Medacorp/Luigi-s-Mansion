forceload add 720 8
forceload add 761 -4
data modify storage luigis_mansion:data furniture set value {room:0,no_ai:1b,sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/entrance"},frame:{namespace:"luigis_mansion",id:"double/basic"},left_hinge:1b},tags:["creacking_door"]}
execute if score #exterior Ticking matches 1 if loaded 720 102 7 unless entity @e[x=720.99,y=102,z=7.5,distance=..0.2,tag=door,limit=1] positioned 720 102 7 rotated -90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {room:0,no_ai:1b,animation:{freeze:1b},sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/entrance"},frame:{namespace:"luigis_mansion",id:"double/basic"},push:1b}}
execute if score #exterior Ticking matches 1 if loaded 720 102 8 unless entity @e[x=720.99,y=102,z=8.5,distance=..0.2,tag=door,limit=1] positioned 720 102 8 rotated -90 0 run function luigis_mansion:spawn_furniture/door
data remove storage luigis_mansion:data furniture
data modify storage luigis_mansion:data entity set value {room:0,no_ai:1b,tags:["left_crow"]}
execute if score #exterior Ticking matches 1 if loaded 760 99 -5 unless entity @e[x=760.5,y=99,z=-4.5,distance=..0.2,tag=crow,limit=1] positioned 760 99 -5 rotated 45 0 run function luigis_mansion:spawn_entities/crow/sad
data modify storage luigis_mansion:data entity set value {room:0,no_ai:1b,tags:["right_crow"],animation:{namespace:"luigis_mansion",id:"sleep"}}
execute if score #exterior Ticking matches 1 if loaded 761 99 -4 unless entity @e[x=761.5,y=99,z=-3.5,distance=..0.2,tag=crow,limit=1] positioned 761 99 -4 rotated 45 0 run function luigis_mansion:spawn_entities/crow/angry
data remove storage luigis_mansion:data entity
execute unless loaded 720 102 7 run scoreboard players set #temp Time 1
execute unless loaded 761 99 -4 run scoreboard players set #temp Time 1
execute unless score #exterior Ticking matches 1 run scoreboard players reset #temp Time
execute if score #temp Time matches 1 run schedule function luigis_mansion:room/exterior/load/set_loaded 1
execute unless score #temp Time matches 1 run forceload remove 720 8
execute unless score #temp Time matches 1 run forceload remove 761 -4
scoreboard players reset #temp Time