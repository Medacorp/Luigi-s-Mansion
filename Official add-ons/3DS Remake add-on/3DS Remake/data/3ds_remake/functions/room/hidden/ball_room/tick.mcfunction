execute unless score #ball_room Ticking matches 1 run function #3ds_remake:room/hidden/ball_room/load
execute as @a[x=695,y=8,z=-70,dx=17,dy=9,dz=33] unless entity @s[scores={Room=17}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=695,y=8,z=-70,dx=17,dy=9,dz=33] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 17

execute as @a[scores={Room=17}] run function 3ds_remake:room/hidden/ball_room/tick_per_player

function #3ds_remake:room/hidden/ball_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=17},limit=1] run function 3ds_remake:room/hidden/ball_room/ghosts