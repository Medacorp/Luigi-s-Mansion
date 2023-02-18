scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute unless entity @s[scores={Dialog=1..10}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set @a[tag=same_room] Invulnerable 10
execute as @a[tag=same_room,distance=..2] at @s run teleport @s ~1 ~ ~
execute if entity @s[scores={Dialog=1}] run stopsound @a[tag=same_room] music
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if entity @s[scores={Dialog=1..1050}] as @a[tag=same_room] run function luigis_mansion:other/music/set/king_boo_warp
execute if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if entity @s[scores={Dialog=1..1050}] as @a[tag=same_room] run function luigis_mansion:other/music/set/mysterious_power
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] Music 0
tag @s[scores={Dialog=1}] add appear
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.king_boo.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1..}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
tag @s[scores={Dialog=10}] remove appear
execute if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} run scoreboard players set @s[scores={Dialog=20}] Dialog 850
execute if entity @s[scores={Dialog=20}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.1"}]}
execute if entity @s[scores={Dialog=60}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.2"}]}
execute if entity @s[scores={Dialog=100}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.3"}]}
scoreboard players set @s[scores={Dialog=140}] AnimationProgress 0
tag @s[scores={Dialog=140}] add complain
execute if entity @s[scores={Dialog=140}] run playsound luigis_mansion:entity.king_boo.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=140}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.4"}]}
execute if entity @s[scores={Dialog=196}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.5"}]}
scoreboard players set @s[scores={Dialog=216}] AnimationProgress 0
tag @s[scores={Dialog=216}] remove complain
execute if entity @s[scores={Dialog=216}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.6"}]}
tag @s[scores={Dialog=272}] add laugh
execute if entity @s[scores={Dialog=272}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.7","with":[{"selector":"@p"}]}]}
execute if entity @s[scores={Dialog=272}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.7.more"}]}
tag @s[scores={Dialog=292}] remove laugh
execute if entity @s[scores={Dialog=416}] as @a[tag=same_room,scores={Sound=0,IdleTime=0..}] unless entity @s[scores={InteractionTime=1..}] run function #luigis_mansion:room/yell
execute if entity @s[scores={Dialog=416}] run playsound luigis_mansion:entity.king_boo.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=456}] AnimationProgress 0
execute if entity @s[scores={Dialog=456}] run playsound luigis_mansion:entity.king_boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=460}] AnimationProgress 0
execute if entity @s[scores={Dialog=476}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.8"}]}
execute if entity @s[scores={Dialog=476}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.8.more"}]}
scoreboard players set @s[scores={Dialog=540}] AnimationProgress 0
tag @s[scores={Dialog=540}] add complain
execute if entity @s[scores={Dialog=540}] run playsound luigis_mansion:entity.king_boo.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=540}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.9"}]}
execute if entity @s[scores={Dialog=684}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/inspect
tag @s[scores={Dialog=704}] remove complain
scoreboard players set @s[scores={Dialog=704}] AnimationProgress 0
execute if entity @s[scores={Dialog=704}] run playsound luigis_mansion:entity.king_boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=708}] AnimationProgress 0
execute if entity @s[scores={Dialog=714}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.10"}]}
execute if entity @s[scores={Dialog=714}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.10.more"}]}
execute if entity @s[scores={Dialog=794}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.11"}]}
tag @s[scores={Dialog=810}] add laugh
execute if entity @s[scores={Dialog=810}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.12"}]}
execute if entity @s[scores={Dialog=850}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.13"}]}
execute if entity @s[scores={Dialog=850}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.13.more"}]}
execute store result score @s Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
tag @s[scores={Dialog=970}] remove laugh
scoreboard players set @s[scores={Dialog=970}] AnimationProgress 0
tag @s[scores={Dialog=970}] add complain
execute if entity @s[scores={Dialog=970}] run playsound luigis_mansion:entity.king_boo.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=970}] unless data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.0"}]}
execute if entity @s[scores={Dialog=970}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches 44 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.1"}]}
execute if entity @s[scores={Dialog=970}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches 43 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.2"}]}
execute if entity @s[scores={Dialog=970}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches 42 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.3"}]}
execute if entity @s[scores={Dialog=970}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches 41 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.4"}]}
execute if entity @s[scores={Dialog=970}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches 40 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.5"}]}
execute if entity @s[scores={Dialog=970}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches 39 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.6"}]}
execute if entity @s[scores={Dialog=970}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches 38 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.7"}]}
execute if entity @s[scores={Dialog=970}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches 37 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.8"}]}
execute if entity @s[scores={Dialog=970}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches 36 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.9"}]}
execute if entity @s[scores={Dialog=970}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches 35 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.10"}]}
execute if entity @s[scores={Dialog=970}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches ..34 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.11"}]}
execute if entity @s[scores={Dialog=970}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches ..34 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.11.more"}]}
scoreboard players set @s[scores={Dialog=1050}] AnimationProgress 0
tag @s[scores={Dialog=1050}] remove complain
tag @s[scores={Dialog=1050}] add appear
execute if entity @s[scores={Dialog=1050}] unless data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.15"}]}
execute if entity @s[scores={Dialog=1050}] unless data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.15.more"}]}
execute if entity @s[scores={Dialog=1050}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches 35..42 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.15"}]}
execute if entity @s[scores={Dialog=1050}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if score @s Boos matches 35..42 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.15.more"}]}
execute if entity @s[scores={Dialog=1050}] if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} unless score @s Boos matches 35..42 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.15.alt"}]}
scoreboard players reset @s Boos
execute if entity @s[scores={Dialog=1050}] run tag @a[tag=same_room,gamemode=!spectator] add warp_target
execute if entity @s[scores={Dialog=1050}] run stopsound @a[tag=warp_target] music
execute if entity @s[scores={Dialog=1050}] run playsound luigis_mansion:music.warped_by_boos music @a[tag=warp_target] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1050}] run scoreboard players set @a[tag=warp_target] Music 80
execute if entity @s[scores={Dialog=1050..}] as @e[tag=same_room,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[scores={Dialog=1050..1110}] as @a[tag=warp_target] at @s unless entity @s[x=684,dx=0] run teleport @s ~0.5 ~ ~
tag @s[scores={Dialog=1060}] remove appear
execute if entity @s[scores={Dialog=1110}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=1110}] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={Dialog=1110}] run teleport @a[tag=warp_target] 751.0 11 7.0
execute if entity @s[scores={Dialog=1110}] run tag @a[tag=warp_target] remove warp_target
execute if entity @s[scores={Dialog=1110}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {king_boo_warp:1b}
tag @s[scores={Dialog=1110}] add dead