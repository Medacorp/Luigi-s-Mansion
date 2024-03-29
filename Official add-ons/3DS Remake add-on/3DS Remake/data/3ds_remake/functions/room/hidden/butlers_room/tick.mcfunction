execute unless score #butlers_room Ticking matches 1 run function #3ds_remake:room/hidden/butlers_room/load
execute as @a[x=737,y=8,z=53,dx=14,dy=9,dz=20] unless entity @s[scores={Room=23}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=737,y=8,z=53,dx=14,dy=9,dz=20] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 23

execute as @a[scores={Room=23}] run function 3ds_remake:room/hidden/butlers_room/tick_per_player

function #3ds_remake:room/hidden/butlers_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=23},limit=1] run function 3ds_remake:room/hidden/butlers_room/ghosts