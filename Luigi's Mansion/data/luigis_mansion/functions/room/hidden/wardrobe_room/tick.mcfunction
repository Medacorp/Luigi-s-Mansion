execute unless score #wardrobe_room Ticking matches 1 run function #luigis_mansion:room/hidden/wardrobe_room/load
execute as @a[x=671,y=111,z=-23,dx=12,dy=6,dz=21] unless entity @s[scores={Room=4}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=671,y=111,z=-23,dx=12,dy=6,dz=21] run scoreboard players set @s Room 4

execute as @a[gamemode=!spectator,x=673,y=111,z=-21,dx=8,dy=6,dz=17] run function luigis_mansion:room/hidden/wardrobe_room/tick_per_player

function #luigis_mansion:room/hidden/wardrobe_room/interactions/room

function luigis_mansion:room/hidden/wardrobe_room/ghosts

function luigis_mansion:room/hidden/door/anteroom_wardrobe_room
function luigis_mansion:room/hidden/door/wardrobe_room_balcony_1