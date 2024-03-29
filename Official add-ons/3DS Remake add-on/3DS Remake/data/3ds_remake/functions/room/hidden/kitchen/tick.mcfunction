execute unless score #kitchen Ticking matches 1 run function #3ds_remake:room/hidden/kitchen/load
execute as @a[x=697,y=8,z=61,dx=14,dy=9,dz=31] unless entity @s[scores={Room=27}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=697,y=8,z=61,dx=14,dy=9,dz=31] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 27

execute as @a[scores={Room=27}] run function 3ds_remake:room/hidden/kitchen/tick_per_player

function #3ds_remake:room/hidden/kitchen/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=27},limit=1] run function 3ds_remake:room/hidden/kitchen/ghosts
