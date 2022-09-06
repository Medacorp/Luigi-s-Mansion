data modify storage luigis_mansion:data ghost_list set from entity @s ArmorItems[3].tag.attacked_by
execute if data storage luigis_mansion:data ghost_list[-1] run function luigis_beta_mansion:items/poltergust_500/search_id_vaporize
data remove storage luigis_mansion:data ghost_list
scoreboard players reset #temp2 ID
execute if entity @s[tag=!vacuumable] run playsound luigis_beta_mansion:item.poltergust_500.vaporize player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=vacuumable] run playsound luigis_beta_mansion:item.poltergust_500.vaporize_vacuumable player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s run particle minecraft:dust 0.7 1 1 1 ~ ~ ~ 0.2 0.2 0.2 1 10
tag @s remove capture
tag @s add dead