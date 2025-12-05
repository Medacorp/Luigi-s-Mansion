execute unless data storage luigis_mansion:data {data_version:8} run function luigis_mansion:other/upgrade_path/root/v3.2
data modify storage luigis_mansion:data {} merge value {data_version:9}
execute if data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"marios_painting"}}] run data modify storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"marios_painting"}}].name.id set value "marios_portrait"
execute if data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"marios_painting_repeat"}}] run data modify storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"marios_painting_repeat"}}].name.id set value "marios_portrait_repeat"
execute if data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"portrificationizing"}}] run data modify storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"portrificationizing"}}].progress set value 0
tag @e[tag=portrait_ghost] add no_remove_on_non_ticking
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] add no_remove_on_non_ticking