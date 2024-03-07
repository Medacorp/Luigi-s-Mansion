execute unless score #training_room Ticking matches 1 run function #luigis_mansion:room/training_room/load
execute as @a[gamemode=!spectator,x=782,y=73,z=-21,dx=17,dy=9,dz=25] unless entity @s[scores={Room=-2}] run scoreboard players set @s LastRoom -2
execute as @e[x=782,y=73,z=-21,dx=17,dy=9,dz=25] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room -2

execute as @a[scores={Room=-2}] run function luigis_mansion:room/training_room/tick_per_player

function #luigis_mansion:room/training_room/interactions/room