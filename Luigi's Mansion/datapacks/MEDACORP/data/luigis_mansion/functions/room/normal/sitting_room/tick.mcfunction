execute unless score #sitting_room Ticking matches 1 run function #luigis_mansion:room/normal/sitting_room/load
execute as @a[gamemode=!spectator,x=734,y=17,z=-39,dx=14,dy=9,dz=20] unless entity @s[scores={Room=69}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=734,y=17,z=-39,dx=14,dy=9,dz=20] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 69

execute as @a[scores={Room=69}] run function luigis_mansion:room/normal/sitting_room/tick_per_player

function #luigis_mansion:room/normal/sitting_room/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=69},limit=1] run function luigis_mansion:room/normal/sitting_room/ghosts