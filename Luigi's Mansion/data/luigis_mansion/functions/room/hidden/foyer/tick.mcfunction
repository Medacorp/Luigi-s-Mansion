execute unless score #foyer Ticking matches 1 run function #luigis_mansion:room/hidden/foyer/load
execute as @a[x=705,y=102,z=-3,dx=14,dy=15,dz=21] unless entity @s[scores={Room=1}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=705,y=102,z=-3,dx=14,dy=15,dz=21] run scoreboard players set @s Room 1
execute as @a[x=698,y=111,z=-3,dx=21,dy=6,dz=21] unless entity @s[scores={Room=1}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=698,y=111,z=-3,dx=21,dy=6,dz=21] run scoreboard players set @s Room 1
tag @e[tag=ghost,scores={Room=1}] add hallway

execute as @a[gamemode=!spectator,x=707,y=102,z=-1,dx=11,dy=15,dz=17] run function luigis_mansion:room/hidden/foyer/tick_per_player
execute as @a[gamemode=!spectator,x=700,y=111,z=-1,dx=17,dy=6,dz=17] unless entity @s[x=707,y=102,z=-1,dx=11,dy=15,dz=17] run function luigis_mansion:room/hidden/foyer/tick_per_player

execute as @e[tag=eternal_gold_coin,scores={Room=1}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..7 run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {foyer_money:1b}
scoreboard players reset #temp Wave

function #luigis_mansion:room/hidden/foyer/interactions/room

function luigis_mansion:room/hidden/foyer/ghosts

function luigis_mansion:room/hidden/door/boo_woods_foyer
function luigis_mansion:room/hidden/door/foyer_parlor
function luigis_mansion:room/hidden/door/foyer_small_hallway
function luigis_mansion:room/hidden/door/foyer_main_hallway