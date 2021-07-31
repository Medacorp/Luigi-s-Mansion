execute unless score #parlor Ticking matches 1 run function #luigis_mansion:room/hidden/parlor/load
execute as @a[gamemode=!spectator,x=712,y=19,z=-23,dx=17,dy=8,dz=21] unless entity @s[scores={Room=3}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=712,y=19,z=-23,dx=17,dy=8,dz=21] run scoreboard players set @s Room 3

execute as @a[gamemode=!spectator,scores={Room=3}] run function luigis_mansion:room/normal/parlor/tick_per_player

execute as @e[tag=eternal_gold_coin,scores={Room=3}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..14 run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {parlor_money:1b}
scoreboard players reset #temp Wave

function #luigis_mansion:room/hidden/parlor/interactions/room

execute if block 714 22 -11 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] positioned 714 22 -11 run function luigis_mansion:spawn_furniture/purple_candles
execute if block 714 22 -14 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] positioned 714 22 -14 run function luigis_mansion:spawn_furniture/purple_candles

function luigis_mansion:room/hidden/parlor/ghosts

function luigis_mansion:room/hidden/door/hallway_1_parlor
function luigis_mansion:room/hidden/door/parlor_anteroom