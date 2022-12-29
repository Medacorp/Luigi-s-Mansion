data modify storage luigis_mansion:data memory append value {uuid:[I;],inventory:{},model:{color:0,variant:0b},hurt_by:{method:""},revived_by:"",poltergust_element:"none"}
data modify storage luigis_mansion:data memory[-1].uuid set from storage luigis_mansion:data luigi_colors[-1].uuid
data modify storage luigis_mansion:data memory[-1].model.color set from storage luigis_mansion:data luigi_colors[-1].color
execute store result storage luigis_mansion:data memory[-1].model.variant byte 1 run data get storage luigis_mansion:data luigi_colors[-1].variant
data remove storage luigis_mansion:data luigi_colors[-1]
execute if data storage luigis_mansion:data luigi_colors[-1] run function luigis_mansion:other/upgrade_path/root/convert_color_to_memory