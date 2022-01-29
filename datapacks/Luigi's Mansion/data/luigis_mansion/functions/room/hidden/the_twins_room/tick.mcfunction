execute unless score #the_twins_room Ticking matches 1 run function #luigis_mansion:room/hidden/the_twins_room/load
execute as @a[gamemode=!spectator,x=736,y=19,z=-35,dx=14,dy=8,dz=21] unless entity @s[scores={Room=49}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=736,y=19,z=-35,dx=14,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 49
scoreboard players set #temp Room 49

execute as @a[gamemode=!spectator,scores={Room=49}] run function luigis_mansion:room/hidden/the_twins_room/tick_per_player

function #luigis_mansion:room/hidden/the_twins_room/interactions/room

function luigis_mansion:room/hidden/the_twins_room/ghosts

function luigis_mansion:room/hidden/door/hallway_2_the_twins_room