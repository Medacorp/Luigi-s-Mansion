execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_17{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless entity @s[scores={MusicGroup=0,MusicType=9}] unless entity @s[scores={MusicGroup=0,MusicType=21}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_17{cleared:1b} unless entity @s[scores={MusicGroup=0,MusicType=6}] unless entity @s[scores={MusicGroup=0,MusicType=21}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] run function luigis_mansion:other/music/set/hallway
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless entity @s[scores={MusicGroup=0,MusicType=6}] unless entity @s[scores={MusicGroup=0,MusicType=21}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] run function luigis_mansion:other/music/set/hallway
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_17{seen:0b} unless entity @s[gamemode=spectator] run function luigis_mansion:room/hidden/hallway_17/set_seen

execute unless entity @s[tag=!wall_warp,gamemode=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/hidden/hallway_17/wall_warp

tag @s add already_ticked

execute store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute if entity @s[x=726.0,y=29,z=24.0,dx=4,dy=7,dz=7,tag=!spectator] unless score #temp Boos matches 20.. unless entity @e[tag=mysterious_power,limit=1] run data modify storage luigis_mansion:data entity set value {mansion:{namespace:"luigis_mansion",id:"hidden"}}
execute if entity @s[x=726.0,y=29,z=24.0,dx=4,dy=7,dz=7,tag=!spectator] unless score #temp Boos matches 20.. unless entity @e[tag=mysterious_power,limit=1] positioned 726 29 28 run function luigis_mansion:spawn_entities/portrait_ghost/boolossus/mysterious_power
scoreboard players reset #temp Boos