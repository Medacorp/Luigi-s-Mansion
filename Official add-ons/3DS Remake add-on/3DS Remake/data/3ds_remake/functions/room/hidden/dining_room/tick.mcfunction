execute unless score #dining_room Ticking matches 1 run function #3ds_remake:room/hidden/dining_room/load
execute as @a[x=697,y=8,z=28,dx=14,dy=9,dz=30] unless entity @s[scores={Room=26}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=697,y=8,z=28,dx=14,dy=9,dz=30] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 26

execute as @a[scores={Room=26}] run function 3ds_remake:room/hidden/dining_room/tick_per_player

function #3ds_remake:room/hidden/dining_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=26},limit=1] run function 3ds_remake:room/hidden/dining_room/ghosts