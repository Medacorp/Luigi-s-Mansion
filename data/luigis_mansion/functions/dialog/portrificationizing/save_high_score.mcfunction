data modify storage luigis_mansion:data high_scores append value {data_index:-1,value:-1}
execute store result storage luigis_mansion:data high_scores[-1].data_index int 1 run scoreboard players get #mansion_data_index Selected
execute store result storage luigis_mansion:data high_scores[-1].value int 1 run scoreboard players get #temp2 Money