execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_22{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless entity @s[scores={MusicGroup=0,MusicType=9}] unless entity @s[scores={MusicGroup=0,MusicType=20..21}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_22{cleared:1b} unless entity @s[scores={MusicGroup=0,MusicType=6}] unless entity @s[scores={MusicGroup=0,MusicType=20..21}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] run function luigis_mansion:other/music/set/hallway
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless entity @s[scores={MusicGroup=0,MusicType=6}] unless entity @s[scores={MusicGroup=0,MusicType=20..21}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] run function luigis_mansion:other/music/set/hallway
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_22{seen:0b} unless entity @s[gamemode=spectator] run function luigis_mansion:room/normal/hallway_22/set_seen

execute unless entity @s[tag=!wall_warp,gamemode=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/normal/hallway_22/wall_warp

tag @s add already_ticked

execute store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute if entity @s[x=655.0,y=2,z=-21.0,dx=4,dy=7,dz=7,tag=!spectator] unless score #temp Boos matches 40.. unless entity @e[tag=king_boo,scores={Room=61},limit=1] run data modify storage luigis_mansion:data entity set value {show_health:0b}
execute if entity @s[x=655.0,y=2,z=-21.0,dx=4,dy=7,dz=7,tag=!spectator] unless score #temp Boos matches 40.. unless entity @e[tag=king_boo,scores={Room=61},limit=1] positioned 656 2 -18 run function luigis_mansion:spawn_entities/portrait_ghost/king_boo
scoreboard players reset #temp Boos
execute if entity @s[x=655.5,y=2,z=-17.5,tag=!spectator,distance=..4] if data storage luigis_mansion:data current_state.current_data{obtained_keys:["secret_altar"]} run function luigis_mansion:room/normal/hallway_22/clear_blockade