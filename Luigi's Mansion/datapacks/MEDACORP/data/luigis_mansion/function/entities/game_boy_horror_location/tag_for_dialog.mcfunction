scoreboard players operation #temp ID = @s ID
execute as @a[tag=looking_at_map] if score @s ID = #temp ID run data modify storage luigis_mansion:data dialogs[-1].scanned_entity set from entity @s UUID
scoreboard players reset #temp ID