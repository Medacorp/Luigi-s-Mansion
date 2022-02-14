execute unless score #rec_room Ticking matches 1 run function #luigis_mansion:room/hidden/rec_room/load
execute as @a[gamemode=!spectator,x=637,y=10,z=44,dx=12,dy=8,dz=33] unless entity @s[scores={Room=32}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=637,y=10,z=44,dx=12,dy=8,dz=33] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 32
scoreboard players set #temp Room 32

execute as @e[scores={Room=32},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 638

execute as @a[gamemode=!spectator,scores={Room=32}] run function luigis_mansion:room/hidden/rec_room/tick_per_player

function #luigis_mansion:room/hidden/rec_room/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=32},limit=1] run function luigis_mansion:room/hidden/rec_room/ghosts

function luigis_mansion:room/hidden/door/courtyard_rec_room
function luigis_mansion:room/hidden/door/rec_room_hallway_8