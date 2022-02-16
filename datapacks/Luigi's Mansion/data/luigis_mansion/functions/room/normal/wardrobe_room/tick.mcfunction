execute unless score #wardrobe_room Ticking matches 1 run function #luigis_mansion:room/normal/wardrobe_room/load
execute as @a[gamemode=!spectator,x=676,y=19,z=55,dx=12,dy=8,dz=21] unless entity @s[scores={Room=5}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=676,y=19,z=55,dx=12,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 5
scoreboard players set #temp Room 5

execute as @e[scores={Room=5},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 677

execute as @a[gamemode=!spectator,scores={Room=5}] run function luigis_mansion:room/normal/wardrobe_room/tick_per_player

function #luigis_mansion:room/normal/wardrobe_room/interactions/room

clone 678 21 64 678 22 67 676 21 64 filtered minecraft:warped_trapdoor
clone 679 21 64 679 22 67 675 21 64 filtered minecraft:warped_trapdoor

execute if entity @a[gamemode=!spectator,scores={Room=5}] run function luigis_mansion:room/normal/wardrobe_room/ghosts

function luigis_mansion:room/normal/door/anteroom_wardrobe_room
function luigis_mansion:room/normal/door/wardrobe_room_balcony_1