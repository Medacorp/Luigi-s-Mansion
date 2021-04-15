tag @s remove dead
scoreboard players add @s Dialog 1
scoreboard players set @a[tag=same_room] Invulnerable 10
execute as @a[tag=same_room,distance=..2] at @s run teleport @s ~1 ~ ~
execute if entity @s[scores={Dialog=1}] run stopsound @a[tag=same_room] music
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] MusicType 20
execute if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] MusicType 21
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] Music 0
execute if data storage luigis_mansion:data current_state.current_data.technical_data{king_boo_warp:1b} run scoreboard players set @s[scores={Dialog=1}] Dialog 720
execute if entity @s[scores={Dialog=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.1"}]}
execute if entity @s[scores={Dialog=40}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.2"}]}
execute if entity @s[scores={Dialog=80}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.3"}]}
execute if entity @s[scores={Dialog=120}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.4"}]}
execute if entity @s[scores={Dialog=176}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.5"}]}
execute if entity @s[scores={Dialog=232}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.6","with":[{"selector":"@p"}]}]}
execute if entity @s[scores={Dialog=232}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.6.more"}]}
execute if entity @s[scores={Dialog=376}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.7"}]}
execute if entity @s[scores={Dialog=376}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.7.more"}]}
execute if entity @s[scores={Dialog=440}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.8"}]}
execute if entity @s[scores={Dialog=584}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.9"}]}
execute if entity @s[scores={Dialog=584}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.9.more"}]}
execute if entity @s[scores={Dialog=664}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.10"}]}
execute if entity @s[scores={Dialog=680}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.11"}]}
execute if entity @s[scores={Dialog=720}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.12"}]}
execute if entity @s[scores={Dialog=720}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.12.more"}]}
execute store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute if entity @s[scores={Dialog=840}] if score #temp Boos matches 39 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.13.1"}]}
execute if entity @s[scores={Dialog=840}] if score #temp Boos matches 38 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.13.2"}]}
execute if entity @s[scores={Dialog=840}] if score #temp Boos matches 37 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.13.3"}]}
execute if entity @s[scores={Dialog=840}] if score #temp Boos matches 36 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.13.4"}]}
execute if entity @s[scores={Dialog=840}] if score #temp Boos matches 35 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.13.5"}]}
execute if entity @s[scores={Dialog=840}] if score #temp Boos matches ..34 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.13.11"}]}
execute if entity @s[scores={Dialog=920}] if score #temp Boos matches 35..37 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14"}]}
execute if entity @s[scores={Dialog=920}] if score #temp Boos matches 35..37 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.more"}]}
execute if entity @s[scores={Dialog=920}] unless score #temp Boos matches 35..37 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo_warp.14.alt"}]}
scoreboard players reset #temp Boos
execute if entity @s[scores={Dialog=920}] run tag @a[tag=same_room] add warp_target
execute if entity @s[scores={Dialog=920}] run stopsound @a[tag=warp_target] music
execute if entity @s[scores={Dialog=920}] run playsound luigis_mansion:music.warped_by_boos music @a[tag=warp_target] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=920}] run scoreboard players set @a[tag=warp_target] Music 80
execute if entity @s[scores={Dialog=920..980}] as @a[tag=warp_target] at @s run teleport @s ~0.5 93 ~
execute if entity @s[scores={Dialog=980}] run teleport @a[tag=warp_target] 714.0 102 8.0
execute if entity @s[scores={Dialog=980}] run tag @a[tag=warp_target] remove warp_target
execute if entity @s[scores={Dialog=980}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {king_boo_warp:1b}
tag @s[scores={Dialog=980}] add dead