execute unless score #parlor Ticking matches 1 run function #luigis_mansion:room/hidden/parlor/load
execute as @a[x=682,y=111,z=-3,dx=17,dy=6,dz=21] unless entity @s[scores={Room=2}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=682,y=111,z=-3,dx=17,dy=6,dz=21] run scoreboard players set @s Room 2

execute as @a[gamemode=!spectator,x=684,y=111,z=-1,dx=13,dy=6,dz=17] run function luigis_mansion:room/hidden/parlor/tick_per_player

execute as @e[tag=eternal_gold_coin,scores={Room=2}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..14 run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {parlor_money:1b}
scoreboard players reset #temp Wave

function #luigis_mansion:room/hidden/parlor/interactions/room

execute if block 684 113 9 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] positioned 684 113 9 run function luigis_mansion:blocks/purple_candles
execute if block 684 113 6 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] positioned 684 113 6 run function luigis_mansion:blocks/purple_candles

function luigis_mansion:room/hidden/parlor/ghosts

function luigis_mansion:room/hidden/door/foyer_parlor
function luigis_mansion:room/hidden/door/parlor_anteroom