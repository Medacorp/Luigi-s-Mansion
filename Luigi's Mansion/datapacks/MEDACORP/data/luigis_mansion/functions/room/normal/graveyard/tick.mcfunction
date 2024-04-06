execute unless score #graveyard Ticking matches 1 run function #luigis_mansion:room/normal/graveyard/load
execute as @a[x=644,y=101,z=38,dx=27,dy=7,dz=18] unless entity @s[scores={Room=29}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=644,y=101,z=38,dx=27,dy=7,dz=18] Room 29

execute as @a[scores={Room=29}] run function luigis_mansion:room/normal/graveyard/tick_per_player

function #luigis_mansion:room/normal/graveyard/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=29},tag=!spectator,limit=1] run function luigis_mansion:room/normal/graveyard/ghosts