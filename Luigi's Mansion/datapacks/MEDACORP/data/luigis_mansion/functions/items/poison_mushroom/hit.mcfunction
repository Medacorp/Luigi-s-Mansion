playsound luigis_mansion:item.poison_mushroom.obtain player @a[tag=same_room] ~ ~ ~ 1
scoreboard players operation #temp ID = @s ID
execute as @e[tag=model_piece,nbt=!{Small:1b}] if score @s ID = #temp ID run data merge entity @s {Small:1b}
scoreboard players reset #temp ID
scoreboard players add @s TotalDamage 20
execute if entity @s[scores={Room=1..}] run function #luigis_mansion:entities/player/damage/drop_item
execute unless entity @s[scores={Shrunk=1..}] in minecraft:overworld run function luigis_mansion:items/poison_mushroom/remove_inventory
scoreboard players set @s Shrunk 201
tag @s remove vacuuming_ghost