scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=40..196}] run scoreboard players set #freeze_timer Selected 1
execute if entity @s[scores={Dialog=40..195}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=40}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.unknown","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.washroom_toad.1"}]}
execute if entity @s[scores={Dialog=64}] if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.unknown","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.washroom_toad.2"}]}
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} run scoreboard players set @s[scores={Dialog=64}] Dialog 196
execute if entity @s[scores={Dialog=196}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=196}] remove washroom_toad
scoreboard players set @s[scores={Dialog=196}] Dialog 0
