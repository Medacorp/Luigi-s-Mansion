execute unless entity @s[scores={MusicType=1}] unless entity @s[scores={MusicType=10}] unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27..30}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/foyer
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.foyer"}
tag @s add seen_room_name


execute if entity @s[x=708.5,y=102,z=8.0,distance=..4] if data storage luigis_mansion:data current_state.current_data.obtained_keys{main_hallway:1b} run function luigis_mansion:room/hidden/foyer/clear_blockade

execute if data storage luigis_mansion:data {found_e_gadd:1b} unless data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:1b} if entity @s[x=714.0,y=102,z=8.0,distance=..3] unless entity @a[x=714.0,y=102,z=8.0,distance=..3,tag=scanning,limit=1] unless entity @a[tag=warp,limit=1] unless entity @e[x=714.0,y=102,z=8.0,distance=..3,tag=chandelier,type=minecraft:area_effect_cloud,limit=1] run summon minecraft:area_effect_cloud 714.0 102 8.0 {Tags:["chandelier"],Duration:240}
execute if entity @s[x=702.5,y=111,z=1.5,distance=..3] if data storage luigis_mansion:data current_state.current_data.rooms.wardrobe_room{cleared:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{portrait_ghosts:1b} run scoreboard players set @a GBHCall 1