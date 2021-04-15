execute unless score #dining_room Ticking matches 1 run function #luigis_mansion:room/hidden/dining_room/load
execute as @a[x=685,y=102,z=-12,dx=14,dy=6,dz=30] unless entity @s[scores={Room=22}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=685,y=102,z=-12,dx=14,dy=6,dz=30] run scoreboard players set @s Room 22

execute as @a[gamemode=!spectator,x=687,y=102,z=-10,dx=10,dy=6,dz=26] run function luigis_mansion:room/hidden/dining_room/tick_per_player

function #luigis_mansion:room/hidden/dining_room/interactions/room

execute if block 692 104 0 minecraft:brewing_stand[has_bottle_0=false,has_bottle_1=false,has_bottle_2=false] positioned 692 104 0 run function luigis_mansion:blocks/1_lit_candle
execute if block 692 104 6 minecraft:brewing_stand[has_bottle_0=false,has_bottle_1=false,has_bottle_2=false] positioned 692 104 6 run function luigis_mansion:blocks/1_lit_candle
execute if block 692 104 0 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] positioned 692 104 0 run function luigis_mansion:blocks/purple_candles
execute if block 692 104 6 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] positioned 692 104 6 run function luigis_mansion:blocks/purple_candles

function luigis_mansion:room/hidden/dining_room/ghosts

function luigis_mansion:room/hidden/door/main_hallway_dining_room
function luigis_mansion:room/hidden/door/dining_room_kitchen