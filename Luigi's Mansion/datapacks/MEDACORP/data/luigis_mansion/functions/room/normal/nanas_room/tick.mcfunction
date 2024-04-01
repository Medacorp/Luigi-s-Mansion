execute unless score #nanas_room Ticking matches 1 run function #luigis_mansion:room/normal/nanas_room/load
execute as @a[x=652,y=19,z=-29,dx=12,dy=7,dz=28] unless entity @s[scores={Room=44}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=652,y=19,z=-29,dx=12,dy=7,dz=28] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 44

execute as @a[scores={Room=44}] run function luigis_mansion:room/normal/nanas_room/tick_per_player

function #luigis_mansion:room/normal/nanas_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=44},tag=!spectator,limit=1] run function luigis_mansion:room/normal/nanas_room/ghosts