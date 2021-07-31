execute unless score #nursery Ticking matches 1 run function #luigis_mansion:room/normal/nursery/load
execute as @a[gamemode=!spectator,x=737,y=19,z=53,dx=14,dy=8,dz=20] unless entity @s[scores={Room=10}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=737,y=19,z=53,dx=14,dy=8,dz=20] run scoreboard players set @s Room 10

execute as @a[gamemode=!spectator,scores={Room=10}] run function luigis_mansion:room/normal/nursery/tick_per_player

execute as @e[tag=eternal_gold_coin,scores={Room=10}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..8 run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {nursery_money:1b}
scoreboard players reset #temp Wave

function #luigis_mansion:room/normal/nursery/interactions/room

function luigis_mansion:room/normal/nursery/ghosts

function luigis_mansion:room/normal/door/hallway_2_nursery