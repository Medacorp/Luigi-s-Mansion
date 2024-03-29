execute unless score #balcony_2 Ticking matches 1 run function #luigis_mansion:room/normal/balcony_2/load
execute as @a[x=653,y=117,z=-42,dx=30,dy=25,dz=80] unless entity @s[scores={Room=53}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=653,y=117,z=-42,dx=30,dy=25,dz=80] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 53

execute as @a[scores={Room=53}] run function luigis_mansion:room/normal/balcony_2/tick_per_player

function #luigis_mansion:room/normal/balcony_2/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=53},limit=1] run function luigis_mansion:room/normal/balcony_2/ghosts