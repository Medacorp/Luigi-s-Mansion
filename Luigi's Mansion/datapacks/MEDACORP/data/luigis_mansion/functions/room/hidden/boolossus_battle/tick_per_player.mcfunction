execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus{health:0} run function luigis_mansion:other/music/set/boolossus_battle_skip_intro
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus{health:0} run function luigis_mansion:other/music/set/area_boss_defeated
tag @s add seen_room_name
scoreboard players set @s LastFloor 2

execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},tag=intro_done,limit=1] unless entity @s[nbt=!{SelectedItem:{components:{"minecraft:custom_data":{id:"luigis_mansion:poltergust_3000"}}}},nbt=!{Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{id:"luigis_mansion:poltergust_3000"}}}]}] run tag @s add riding_poltergust
execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},tag=split,limit=1] unless entity @s[nbt=!{SelectedItem:{components:{"minecraft:custom_data":{id:"luigis_mansion:poltergust_3000"}}}},nbt=!{Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{id:"luigis_mansion:poltergust_3000"}}}]}] run tag @s add riding_poltergust
execute unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},tag=split,limit=1] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},tag=intro_done,limit=1] run tag @s[tag=riding_poltergust] remove riding_poltergust

execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{seen:0b} unless entity @s[tag=spectator] run function luigis_mansion:room/hidden/balcony_2/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/hidden/boolossus_battle/wall_warp

tag @s add already_ticked
execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{cleared:1b} run function luigis_mansion:room/hidden/boolossus_battle/clear_balcony_2