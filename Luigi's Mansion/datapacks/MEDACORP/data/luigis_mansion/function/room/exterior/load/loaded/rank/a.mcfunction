place template luigis_mansion:exterior/a_rank/2 710 100 16
place template luigis_mansion:exterior/a_rank/1 710 100 -32
execute as @e[tag=rank_reveal_painting,limit=1] run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.a_rank