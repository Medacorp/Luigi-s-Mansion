execute unless score #main_stairs Ticking matches 1 run function #luigis_mansion:room/normal/main_stairs/load
execute if entity @a[advancements={luigis_mansion:keys={main_stairs=false}},limit=1] run function luigis_mansion:room/normal/main_stairs/lock_door
execute as @a[x=664,y=102,z=-42,dx=8,dy=15,dz=26] unless entity @s[scores={Room=29}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=664,y=102,z=-42,dx=8,dy=15,dz=26] run scoreboard players set @s Room 29
tag @e[tag=ghost,scores={Room=29}] add hallway

execute as @a[gamemode=!spectator,x=666,y=102,z=-40,dx=4,dy=15,dz=22] run function luigis_mansion:room/normal/main_stairs/tick_per_player

function #luigis_mansion:room/normal/main_stairs/interactions/room

function luigis_mansion:room/normal/main_stairs/ghosts

function luigis_mansion:room/normal/door/rec_room_main_stairs
function luigis_mansion:room/normal/door/main_hallway_main_stairs
function luigis_mansion:room/normal/door/main_stairs_tea_room
function luigis_mansion:room/normal/door/main_stairs_hallway