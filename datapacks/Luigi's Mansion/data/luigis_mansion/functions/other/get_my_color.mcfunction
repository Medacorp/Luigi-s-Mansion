data modify block 27 1 0 Items[0].tag.value set from storage luigis_mansion:data these_colors[-1].uuid
execute store result score #matches Time if blocks 27 0 0 27 0 0 27 1 0 all
execute if score #matches Time matches 1 run data modify storage luigis_mansion:data this_color set from storage luigis_mansion:data these_colors[-1]
execute unless score #matches Time matches 1 run data modify storage luigis_mansion:data new_colors append from storage luigis_mansion:data these_colors[-1]
data remove storage luigis_mansion:data these_colors[-1]
execute if score #matches Time matches 1 run data modify storage luigis_mansion:data new_colors append from storage luigis_mansion:data these_colors[]
execute unless score #matches Time matches 1 if data storage luigis_mansion:data these_colors[-1] run function luigis_mansion:other/get_my_color