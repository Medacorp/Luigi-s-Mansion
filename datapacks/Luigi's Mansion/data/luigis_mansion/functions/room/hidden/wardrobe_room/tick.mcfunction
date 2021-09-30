execute unless score #wardrobe_room Ticking matches 1 run function #luigis_mansion:room/hidden/wardrobe_room/load
execute as @a[gamemode=!spectator,x=676,y=19,z=-61,dx=12,dy=8,dz=21] unless entity @s[scores={Room=5}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=676,y=19,z=-61,dx=12,dy=8,dz=21] run scoreboard players set @s Room 5

execute as @e[scores={Room=5},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 677

execute as @a[gamemode=!spectator,scores={Room=5}] run function luigis_mansion:room/hidden/wardrobe_room/tick_per_player

function #luigis_mansion:room/hidden/wardrobe_room/interactions/room

clone 678 21 -52 678 22 -49 676 21 -52 filtered minecraft:warped_trapdoor
clone 679 21 -52 679 22 -49 675 21 -52 filtered minecraft:warped_trapdoor

function luigis_mansion:room/hidden/wardrobe_room/ghosts

function luigis_mansion:room/hidden/door/anteroom_wardrobe_room
function luigis_mansion:room/hidden/door/wardrobe_room_balcony_1