scoreboard players add #temp LastTotalDamage 1
scoreboard players add #temp2 LastTotalDamage 1
execute if score #temp2 LastTotalDamage matches 2 run scoreboard players set #temp2 LastTotalDamage 0

execute if score #temp2 LastTotalDamage matches 0 if score #temp ActionTime matches 1.. if entity @s[tag=!flipped_gravity] positioned ~ ~2 ~ run function luigis_mansion:entities/luigi/damage/drop_item/drop/one with storage luigis_mansion:data macro
execute if score #temp2 LastTotalDamage matches 0 if score #temp ActionTime matches 1.. if entity @s[tag=flipped_gravity] positioned ~ ~-1 ~ run function luigis_mansion:entities/luigi/damage/drop_item/drop/one with storage luigis_mansion:data macro
execute if score #temp2 LastTotalDamage matches 0 if score #temp ActionTime matches 1.. run scoreboard players remove #temp ActionTime 1

execute unless score #temp LastTotalDamage = #temp TotalDamage if score #temp ActionTime matches 1.. run function luigis_mansion:entities/luigi/damage/drop_item/drop/loop