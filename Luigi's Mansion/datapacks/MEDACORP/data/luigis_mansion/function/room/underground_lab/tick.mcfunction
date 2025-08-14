execute unless score #underground_lab Ticking matches 1 run function #luigis_mansion:room/underground_lab/load
execute as @e[tag=player,x=31,y=1,z=4,dx=15,dy=14,dz=9] unless entity @s[scores={Room=-1}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=31,y=1,z=4,dx=15,dy=14,dz=9] Room -1

execute if data storage luigis_mansion:data rooms.underground_lab{cleared:0b} if entity @a[scores={Room=-1},tag=!spectator] unless data storage luigis_mansion:data dialogs[{room:-1}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"the_mansion"},room:-1,progress:0}
execute if entity @e[tag=e_gadd,scores={Room=-1},tag=talk_this_tick] if data storage luigis_mansion:data rooms.underground_lab{cleared:1b} unless data storage luigis_mansion:data dialogs[{room:-1}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"underground_lab"},room:-1,progress:0}

execute as @a[scores={Room=-1}] run function luigis_mansion:room/underground_lab/tick_per_player