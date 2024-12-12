playsound luigis_mansion:item.poison_mushroom.obtain player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Room=1..}] run function luigis_mansion:entities/luigi/run_command_as_owner {command:"function luigis_mansion:items/poison_mushroom/drop_items"}
execute unless entity @s[scores={Shrunk=1..}] run function luigis_mansion:entities/luigi/run_command_as_owner {command:"function luigis_mansion:items/poison_mushroom/remove_inventory"}
scoreboard players set @s Shrunk 400