execute unless score #graveyard Ticking matches 1 run function #luigis_mansion:room/normal/graveyard/load
execute as @a[x=644,y=102,z=38,dx=27,dy=6,dz=18] unless entity @s[scores={Room=25}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=644,y=102,z=38,dx=27,dy=6,dz=18] run scoreboard players set @s Room 25

execute as @a[gamemode=!spectator,x=645,y=102,z=39,dx=25,dy=6,dz=16] run function luigis_mansion:room/normal/graveyard/tick_per_player

function #luigis_mansion:room/normal/graveyard/interactions/room

function luigis_mansion:room/normal/graveyard/ghosts