data modify block 27 0 0 Items[0].tag.value set from storage luigis_mansion_3ds_remake:data boo_list[-1].name
execute store result score #temp Time if blocks 27 0 0 27 0 0 26 0 0 all
execute if score #temp Time matches 1 store result score #temp Time run data get storage luigis_mansion_3ds_remake:data boo_list[-1].room
execute if score #temp Time matches 0 run data remove storage luigis_mansion_3ds_remake:data boo_list[-1]
execute if score #temp Time matches 0 run function luigis_mansion_3ds_remake:items/gameboy_horror/map/find_room_for_boo_search