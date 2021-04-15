execute unless score #kitchen Ticking matches 1 run function #luigis_mansion:room/hidden/kitchen/load
execute as @a[x=685,y=102,z=-42,dx=14,dy=6,dz=31] unless entity @s[scores={Room=23}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=685,y=102,z=-42,dx=14,dy=6,dz=31] run scoreboard players set @s Room 23

execute as @a[gamemode=!spectator,x=687,y=102,z=-40,dx=10,dy=6,dz=27] run function luigis_mansion:room/hidden/kitchen/tick_per_player

function #luigis_mansion:room/hidden/kitchen/interactions/room

function luigis_mansion:room/hidden/kitchen/ghosts

function luigis_mansion:room/hidden/door/dining_room_kitchen
function luigis_mansion:room/hidden/door/kitchen_boneyard
