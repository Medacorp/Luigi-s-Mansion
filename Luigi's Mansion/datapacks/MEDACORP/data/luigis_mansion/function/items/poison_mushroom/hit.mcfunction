playsound luigis_mansion:item.poison_mushroom.obtain player @a[tag=same_room] ~ ~ ~ 1
scoreboard players add @s TotalDamage 20
execute if entity @s[scores={Room=1..}] run function luigis_mansion:entities/player/damage/drop_item with storage luigis_mansion:data current_state.current_data.drop_item_on_damage
execute unless entity @s[scores={Shrunk=1..}] in minecraft:overworld run function luigis_mansion:items/poison_mushroom/remove_inventory
scoreboard players set @s Shrunk 201
attribute @s minecraft:generic.scale base set 0.5
tag @s remove vacuuming_ghost