execute unless entity @s[scores={MusicType=8}] unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27..30}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/outside
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.balcony"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{seen:0b} run function luigis_mansion:room/hidden/balcony_2/set_seen

execute if entity @s[x=681.5,y=120,z=-13.0,distance=..4] if data storage luigis_mansion:data current_state.current_data.obtained_keys{hallway_18:1b} run function luigis_mansion:room/hidden/balcony_2/clear_blockade

execute if entity @e[tag=boolossus,limit=1] if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]},nbt=!{Inventory:[{tag:{CustomModelData:5,luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] run function luigis_mansion:items/gameboy_horror/turn_boo_radar_red
execute if entity @e[tag=boolossus,limit=1] unless entity @e[tag=boolossus,tag=talk,limit=1] at @s run playsound luigis_mansion:item.gameboy_horror.boo_radar player @s ~ ~ ~ 1
