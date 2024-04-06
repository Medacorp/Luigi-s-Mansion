execute unless score #guest_room Ticking matches 1 run function #luigis_mansion:room/normal/guest_room/load
execute as @a[x=734,y=19,z=-63,dx=14,dy=7,dz=21] unless entity @s[scores={Room=70}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=734,y=19,z=-63,dx=14,dy=7,dz=21] Room 70

execute as @a[scores={Room=70}] run function luigis_mansion:room/normal/guest_room/tick_per_player

function #luigis_mansion:room/normal/guest_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=70},tag=!spectator,limit=1] run function luigis_mansion:room/normal/guest_room/ghosts