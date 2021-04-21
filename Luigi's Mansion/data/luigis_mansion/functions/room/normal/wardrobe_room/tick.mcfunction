execute unless score #wardrobe_room Ticking matches 1 run function #luigis_mansion:room/normal/wardrobe_room/load
execute as @a[gamemode=!spectator,x=676,y=19,z=55,dx=12,dy=8,dz=21] unless entity @s[scores={Room=4}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=676,y=19,z=55,dx=12,dy=8,dz=21] run scoreboard players set @s Room 4

scoreboard players set @e[scores={Room=4},type=!minecraft:area_effect_cloud] MirrorX 677

execute as @a[gamemode=!spectator,x=676,y=19,z=55,dx=12,dy=8,dz=21] run function luigis_mansion:room/normal/wardrobe_room/tick_per_player

function #luigis_mansion:room/normal/wardrobe_room/interactions/room

clone 678 21 64 678 22 67 676 21 64 filtered minecraft:warped_trapdoor
clone 679 21 64 679 22 67 675 21 64 filtered minecraft:warped_trapdoor

function luigis_mansion:room/normal/wardrobe_room/ghosts

function luigis_mansion:room/normal/door/anteroom_wardrobe_room
function luigis_mansion:room/normal/door/wardrobe_room_balcony_1