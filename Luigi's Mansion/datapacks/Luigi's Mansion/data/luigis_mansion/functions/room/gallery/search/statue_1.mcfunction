execute positioned 771 78 -24 run function luigis_mansion:blocks/dust
scoreboard players set #gallery_statue_1 Searched 1
data modify storage luigis_mansion:data rooms.gallery merge value {cleared:1b}
advancement grant @a until luigis_mansion:lab/gallery
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/lab/gallery