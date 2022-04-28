execute unless score #sitting_room Ticking matches 1 run function #luigis_mansion:room/normal/sitting_room/load
execute as @a[gamemode=!spectator,x=734,y=19,z=-39,dx=14,dy=8,dz=20] unless entity @s[scores={Room=69}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=734,y=19,z=-39,dx=14,dy=8,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 69
scoreboard players set #temp Room 69

execute as @a[gamemode=!spectator,scores={Room=69}] run function luigis_mansion:room/normal/sitting_room/tick_per_player

function #luigis_mansion:room/normal/sitting_room/interactions/room

scoreboard players set #temp Room 69
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/sitting_room/ghosts
tag @a[tag=same_room] remove same_room

function luigis_mansion:room/normal/door/hallway_13_sitting_room
function luigis_mansion:room/normal/door/sitting_room_guest_room