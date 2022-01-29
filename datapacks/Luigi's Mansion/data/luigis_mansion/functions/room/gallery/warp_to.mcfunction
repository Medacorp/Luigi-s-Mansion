title @s subtitle ""
function luigis_mansion:other/music/set/gallery
execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute in minecraft:overworld run teleport @s 772 77 -20 90 0