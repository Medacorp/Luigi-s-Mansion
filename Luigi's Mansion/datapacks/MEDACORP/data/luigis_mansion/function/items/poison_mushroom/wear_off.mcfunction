playsound luigis_mansion:item.poison_mushroom.wear_out player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s Shrunk 0
function luigis_mansion:entities/luigi/run_command_as_owner {command:"function luigis_mansion:items/poison_mushroom/readd_inventory"}