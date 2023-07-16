data modify storage luigis_mansion:data ghost_list set from entity @s ArmorItems[3].tag.attacked_by
execute if data storage luigis_mansion:data ghost_list[-1] run function e3_demo:items/poltergust_500/search_id_vaporize
data remove storage luigis_mansion:data ghost_list
scoreboard players reset #temp2 ID
execute if entity @s[tag=!vacuumable] run playsound e3_demo:item.poltergust_500.vaporize player @a[tag=same_room] ~ ~ ~ 1
particle minecraft:dust 0.7 1 1 1 ~ ~ ~ 0.2 0.2 0.2 1 10
tag @s remove capture
tag @s add dead