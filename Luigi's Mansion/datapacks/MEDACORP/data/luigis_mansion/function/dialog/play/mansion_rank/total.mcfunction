data modify storage luigis_mansion:data temp set from storage luigis_mansion:data dialogs[0].total
execute as @e[tag=mansion_rank_end,limit=1] at @s run teleport @s 786.1 73.6 2.1
data modify entity @e[tag=mansion_rank_end,limit=1] text set value {type:"translatable",translate:"luigis_mansion:dialog.mansion_rank.total.no_money"}
data merge entity @e[tag=mansion_rank_end,limit=1] {background:-1728053248,transformation:{scale:[0.25f,0.25f,0.25f]}}
execute unless data storage luigis_mansion:data {temp:0} run data modify entity @e[tag=mansion_rank_end,limit=1] text set value {type:"translatable",translate:"luigis_mansion:dialog.mansion_rank.total",with:[{type:"nbt",source:"storage",storage:"luigis_mansion:data",nbt:"dialogs[0].total"}]}
data remove storage luigis_mansion:data temp