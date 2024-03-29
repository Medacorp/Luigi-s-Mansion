execute unless score #study Ticking matches 1 run function #3ds_remake:room/hidden/study/load
execute as @a[x=700,y=17,z=42,dx=17,dy=9,dz=21] unless entity @s[scores={Room=8}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=700,y=17,z=42,dx=17,dy=9,dz=21] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 8

execute as @a[scores={Room=8}] run function 3ds_remake:room/hidden/study/tick_per_player

function #3ds_remake:room/hidden/study/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=8},limit=1] run function 3ds_remake:room/hidden/study/ghosts