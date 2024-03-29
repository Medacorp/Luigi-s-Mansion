execute unless score #laundry_room Ticking matches 1 run function #3ds_remake:room/hidden/laundry_room/load
execute as @a[x=712,y=8,z=57,dx=8,dy=9,dz=20] unless entity @s[scores={Room=22}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=712,y=8,z=57,dx=8,dy=9,dz=20] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 22

execute as @a[scores={Room=22}] run function 3ds_remake:room/hidden/laundry_room/tick_per_player

function #3ds_remake:room/hidden/laundry_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=22},limit=1] run function 3ds_remake:room/hidden/laundry_room/ghosts