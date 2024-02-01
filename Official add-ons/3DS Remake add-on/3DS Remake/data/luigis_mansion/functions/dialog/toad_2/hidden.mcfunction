scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..375}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=1..376}] as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.toad.cry_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1}] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.1"}]}
execute if entity @s[scores={Dialog=56}] if score #players Totals matches 1 run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.2","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=56}] if score #players Totals matches 2.. run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.2.more"}]}
data remove entity @s[scores={Dialog=88}] data.animation
execute if entity @s[scores={Dialog=88}] run playsound luigis_mansion:entity.toad.wow neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=88}] if score #players Totals matches 1 run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.3","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=88}] if score #players Totals matches 2.. run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.3.more"}]}
tag @s[scores={Dialog=216}] add turning_on_lights
execute if entity @s[scores={Dialog=216}] if score #mansion_data_index Selected matches 1 run function 3ds_remake:room/hidden/balcony_1/clear
execute if entity @s[scores={Dialog=216}] if score #mansion_data_index Selected matches 0 run function luigis_mansion:room/hidden/balcony_1/clear
data modify entity @s[scores={Dialog=236}] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if entity @s[scores={Dialog=236}] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.4"}]}
execute if entity @s[scores={Dialog=356}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/enthusiastic
execute if entity @s[scores={Dialog=376}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=376}] remove talk
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
tag @s[tag=!talk] remove turning_on_lights
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
data remove entity @s[tag=!talk,scores={Dialog=216..}] data.animation
data modify entity @s[tag=!talk,scores={Dialog=..215}] data.animation set value {namespace:"luigis_mansion",id:"cry"}
scoreboard players set @s[tag=!talk] Dialog 0