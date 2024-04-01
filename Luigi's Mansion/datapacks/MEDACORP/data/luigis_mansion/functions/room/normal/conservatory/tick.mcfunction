execute unless score #conservatory Ticking matches 1 run function #luigis_mansion:room/normal/conservatory/load
execute as @a[x=652,y=10,z=-29,dx=12,dy=7,dz=28] unless entity @s[scores={Room=25}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=652,y=10,z=-29,dx=12,dy=7,dz=28] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 25

execute as @a[scores={Room=25}] run function luigis_mansion:room/normal/conservatory/tick_per_player

function #luigis_mansion:room/normal/conservatory/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=25},tag=!spectator,limit=1] run function luigis_mansion:room/normal/conservatory/ghosts