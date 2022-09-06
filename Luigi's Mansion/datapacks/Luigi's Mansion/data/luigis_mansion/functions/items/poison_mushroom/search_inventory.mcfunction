data modify block 26 0 0 Items[0].tag.value set from storage luigis_mansion:data inventories[-1].uuid
execute store success score #temp ActionTime if blocks 27 0 0 27 0 0 26 0 0 all
execute if score #temp ActionTime matches 1 run data modify storage luigis_mansion:data inventory set from storage luigis_mansion:data inventories[-1]
execute if score #temp ActionTime matches 0 run data modify storage luigis_mansion:data new_inventories append from storage luigis_mansion:data inventories[-1]
data remove storage luigis_mansion:data inventories[-1]
execute if score #temp ActionTime matches 1 run data modify storage luigis_mansion:data new_inventories append from storage luigis_mansion:data inventories[]
execute unless score #temp ActionTime matches 1 if data storage luigis_mansion:data inventories[-1] run function luigis_mansion:items/poison_mushroom/search_inventory