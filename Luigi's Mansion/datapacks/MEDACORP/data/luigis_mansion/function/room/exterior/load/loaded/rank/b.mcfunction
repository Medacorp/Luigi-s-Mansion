place template luigis_mansion:exterior/b_rank/2 711 100 22
place template luigis_mansion:exterior/b_rank/1 711 100 -26
execute as @e[tag=rank_reveal_painting,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.b_rank