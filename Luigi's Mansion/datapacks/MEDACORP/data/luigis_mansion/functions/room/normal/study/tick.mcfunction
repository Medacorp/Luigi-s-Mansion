execute unless score #study Ticking matches 1 run function #luigis_mansion:room/normal/study/load
execute as @a[x=700,y=19,z=42,dx=17,dy=7,dz=21] unless entity @s[scores={Room=8}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=700,y=19,z=42,dx=17,dy=7,dz=21] Room 8

execute as @a[scores={Room=8}] run function luigis_mansion:room/normal/study/tick_per_player

function #luigis_mansion:room/normal/study/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=8},tag=!spectator,limit=1] run function luigis_mansion:room/normal/study/ghosts