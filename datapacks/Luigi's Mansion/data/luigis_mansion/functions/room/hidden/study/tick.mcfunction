execute unless score #study Ticking matches 1 run function #luigis_mansion:room/hidden/study/load
execute as @a[gamemode=!spectator,x=700,y=19,z=-48,dx=17,dy=8,dz=21] unless entity @s[scores={Room=8}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=700,y=19,z=-48,dx=17,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 8

execute as @a[gamemode=!spectator,scores={Room=8}] run function luigis_mansion:room/hidden/study/tick_per_player

function #luigis_mansion:room/hidden/study/interactions/room

function luigis_mansion:room/hidden/study/ghosts

function luigis_mansion:room/hidden/door/hallway_2_study