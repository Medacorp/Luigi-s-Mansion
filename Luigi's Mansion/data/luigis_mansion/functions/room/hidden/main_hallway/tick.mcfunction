execute unless score #main_hallway Ticking matches 1 run function #luigis_mansion:room/hidden/main_hallway/load
execute if entity @a[advancements={luigis_mansion:keys={main_stairs=false}},limit=1] run function luigis_mansion:room/hidden/main_stairs/lock_door
execute as @a[x=698,y=102,z=-23,dx=8,dy=6,dz=60] unless entity @s[scores={Room=10}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=698,y=102,z=-23,dx=8,dy=6,dz=60] run scoreboard players set @s Room 10
execute as @a[x=664,y=102,z=17,dx=42,dy=6,dz=8] unless entity @s[scores={Room=10}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=664,y=102,z=17,dx=42,dy=6,dz=8] run scoreboard players set @s Room 10
execute as @a[x=664,y=102,z=-10,dx=8,dy=6,dz=42] unless entity @s[scores={Room=10}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=664,y=102,z=-10,dx=8,dy=6,dz=42] run scoreboard players set @s Room 10
execute as @a[x=653,y=102,z=-10,dx=19,dy=6,dz=8] unless entity @s[scores={Room=10}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=653,y=102,z=-10,dx=19,dy=6,dz=8] run scoreboard players set @s Room 10
tag @e[tag=ghost,scores={Room=10}] add hallway

execute as @a[gamemode=!spectator,x=700,y=102,z=-21,dx=4,dy=6,dz=56] run function luigis_mansion:room/hidden/main_hallway/tick_per_player
execute as @a[gamemode=!spectator,x=666,y=102,z=19,dx=38,dy=6,dz=4] unless entity @s[x=700,y=102,z=-21,dx=4,dy=6,dz=56] run function luigis_mansion:room/hidden/main_hallway/tick_per_player
execute as @a[gamemode=!spectator,x=666,y=102,z=-8,dx=4,dy=6,dz=38] unless entity @s[x=666,y=102,z=19,dx=38,dy=6,dz=4] unless entity @s[x=700,y=102,z=-21,dx=4,dy=6,dz=56] run function luigis_mansion:room/hidden/main_hallway/tick_per_player
execute as @a[gamemode=!spectator,x=655,y=102,z=-8,dx=15,dy=6,dz=4] unless entity @s[x=666,y=102,z=-8,dx=4,dy=6,dz=38] unless entity @s[x=666,y=102,z=19,dx=38,dy=6,dz=4] unless entity @s[x=700,y=102,z=-21,dx=4,dy=6,dz=56] run function luigis_mansion:room/hidden/main_hallway/tick_per_player

function #luigis_mansion:room/hidden/main_hallway/interactions/room

function luigis_mansion:room/hidden/main_hallway/ghosts

function luigis_mansion:room/hidden/door/foyer_main_hallway
function luigis_mansion:room/hidden/door/main_hallway_basement_stairs
function luigis_mansion:room/hidden/door/main_hallway_bathroom_1
function luigis_mansion:room/hidden/door/main_hallway_ball_room
function luigis_mansion:room/hidden/door/main_hallway_washroom_1
function luigis_mansion:room/hidden/door/main_hallway_fortune_tellers_room
function luigis_mansion:room/hidden/door/main_hallway_laundry_room
function luigis_mansion:room/hidden/door/main_hallway_conservatory
function luigis_mansion:room/hidden/door/main_hallway_dining_room
function luigis_mansion:room/hidden/door/main_hallway_courtyard
function luigis_mansion:room/hidden/door/main_hallway_main_stairs
function luigis_mansion:room/hidden/door/main_hallway_billiards_room