title @s subtitle ""
function luigis_mansion:other/music/set/training_option
execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute in minecraft:overworld run teleport @s 795.0 77 -8.0 90 0
experience set @s 0 levels
execute if entity @a[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}]}] run function luigis_mansion:items/poltergust_3000/no_element
scoreboard players set @s Health 100