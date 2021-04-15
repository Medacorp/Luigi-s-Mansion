execute unless score #small_hallway Ticking matches 1 run function #luigis_mansion:room/hidden/small_hallway/load
execute as @a[x=698,y=111,z=-41,dx=8,dy=6,dz=38] unless entity @s[scores={Room=6}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=698,y=111,z=-41,dx=8,dy=6,dz=38] run scoreboard players set @s Room 6
tag @e[tag=ghost,scores={Room=6}] add hallway

execute as @a[gamemode=!spectator,x=700,y=111,z=-40,dx=4,dy=6,dz=36] run function luigis_mansion:room/hidden/small_hallway/tick_per_player

execute as @e[tag=eternal_gold_coin,scores={Room=6}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..10 run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {small_hallway_money:1b}
scoreboard players reset #temp Wave

function #luigis_mansion:room/hidden/small_hallway/interactions/room

function luigis_mansion:room/hidden/small_hallway/ghosts

function luigis_mansion:room/hidden/door/foyer_small_hallway
function luigis_mansion:room/hidden/door/small_hallway_study
function luigis_mansion:room/hidden/door/small_hallway_master_bedroom
function luigis_mansion:room/hidden/door/small_hallway_nursery
function luigis_mansion:room/hidden/door/small_hallway_twins_room