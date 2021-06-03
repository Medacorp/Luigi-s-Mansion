title @s subtitle ""
execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute in minecraft:overworld run teleport @s 775 77 16 150 0
scoreboard players reset @s Element
execute if entity @a[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}]}] run function luigis_mansion:items/poltergust_3000/no_element