data modify storage luigis_mansion:data {} merge value {obtained_parlor_key:1b}
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/door/foyer_parlor
function luigis_mansion:items/key/sound