execute positioned 771 78 -24 run function luigis_mansion:blocks/dust
scoreboard players set #gallery_statue_1 Searched 1
data modify storage luigis_mansion:data rooms.gallery merge value {cleared:1b}
tag @a[tag=looking_at_map,nbt={Dimension:"minecraft:overworld"},limit=1] add regenerate_map