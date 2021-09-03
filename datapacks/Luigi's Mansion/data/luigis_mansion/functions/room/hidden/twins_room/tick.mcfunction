execute unless score #twins_room Ticking matches 1 run function #luigis_mansion:room/hidden/twins_room/load
execute as @a[gamemode=!spectator,x=736,y=19,z=-35,dx=14,dy=8,dz=21] unless entity @s[scores={Room=49}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=736,y=19,z=-35,dx=14,dy=8,dz=21] unless entity @s[type=!minecraft:player,scores={Room=-2147483648..}] run scoreboard players set @s Room 49

execute as @a[gamemode=!spectator,scores={Room=49}] run function luigis_mansion:room/normal/twins_room/tick_per_player

function #luigis_mansion:room/hidden/twins_room/interactions/room

function luigis_mansion:room/hidden/twins_room/ghosts

function luigis_mansion:room/hidden/door/hallway_2_twins_room