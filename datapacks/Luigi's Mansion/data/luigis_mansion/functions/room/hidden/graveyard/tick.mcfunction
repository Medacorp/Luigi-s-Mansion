execute unless score #graveyard Ticking matches 1 run function #luigis_mansion:room/hidden/graveyard/load
execute as @a[gamemode=!spectator,x=644,y=101,z=-40,dx=27,dy=8,dz=18] unless entity @s[scores={Room=29}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=644,y=101,z=-40,dx=27,dy=8,dz=18] run scoreboard players set @s Room 29

execute as @a[gamemode=!spectator,scores={Room=29}] run function luigis_mansion:room/hidden/graveyard/tick_per_player

function #luigis_mansion:room/hidden/graveyard/interactions/room

function luigis_mansion:room/hidden/graveyard/ghosts