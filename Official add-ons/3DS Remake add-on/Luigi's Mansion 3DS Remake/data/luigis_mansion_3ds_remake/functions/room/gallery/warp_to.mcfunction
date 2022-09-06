title @s subtitle ""
function luigis_mansion:other/music/set/gallery
execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute unless block 772 4 -16 minecraft:dirt run function luigis_mansion_3ds_remake:room/gallery/generate
execute in minecraft:overworld positioned 772 2 -20 rotated 0 0 run function luigis_mansion:entities/player/set_position
execute if entity @a[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}]}] run function luigis_mansion:items/poltergust_3000/no_element