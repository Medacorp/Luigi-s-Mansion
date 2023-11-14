execute positioned 771 78 -33 run function luigis_mansion:blocks/dust
scoreboard players set #gallery_statue_2 Searched 1
data modify storage luigis_mansion:data rooms.gallery merge value {cleared:1b}
advancement grant @a until luigis_mansion:lab/gallery
tag @a[tag=looking_at_map,nbt={Dimension:"minecraft:overworld"},limit=1] add regenerate_map