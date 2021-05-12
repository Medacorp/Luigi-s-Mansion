scoreboard players add @s[scores={Dialog=299..}] Dialog 1
scoreboard players add @s[scores={Dialog=298},tag=watered] Dialog 1
scoreboard players add @s[scores={Dialog=238..297}] Dialog 1
scoreboard players add @s[scores={Dialog=237},tag=watered] Dialog 1
scoreboard players add @s[scores={Dialog=177..236}] Dialog 1
scoreboard players add @s[scores={Dialog=176},tag=watered] Dialog 1
scoreboard players add @s[scores={Dialog=1..175}] Dialog 1
tag @s[tag=watered] remove watered
execute if entity @a[tag=same_room] unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if data storage luigis_mansion:data current_state.current_data.technical_data{sue_pea_spoke:1b} run scoreboard players set @s[scores={Dialog=1}] Dialog 176
execute if entity @s[scores={Dialog=1}] run stopsound @a[tag=same_room] music
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] MusicType 7
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] Music 242
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:music.sue_pea music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=94}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sue_pea","color":"green"},{"translate":"luigis_mansion:dialog.sue_pea.1"}]}
execute if entity @s[scores={Dialog=175}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sue_pea","color":"green"},{"translate":"luigis_mansion:dialog.sue_pea.2"}]}
execute if entity @s[scores={Dialog=175}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sue_pea_spoke:1b}
effect give @s[scores={Dialog=175..299}] minecraft:invisibility 1 0 true
execute if entity @s[scores={Dialog=175..299}] at @a[tag=same_room] positioned ^ ^ ^8 run effect clear @s[distance=..8] minecraft:invisibility
execute if entity @s[scores={Dialog=299}] unless data storage luigis_mansion:data current_state.current_data.technical_data{sue_pea_snored:1b} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sue_pea","color":"green"},{"translate":"luigis_mansion:dialog.sue_pea.3"}]}
execute if entity @s[scores={Dialog=299}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sue_pea_snored:1b}
execute if entity @s[scores={Dialog=299..}] as @a[tag=same_room] unless entity @s[scores={MusicType=36}] run function luigis_mansion:other/music/set/danger
execute if entity @s[scores={Dialog=299}] run tag @e[tag=haunted_clown_doll] add enabled
scoreboard players set @s[scores={Dialog=299}] VulnerableTime 100
scoreboard players set @s[scores={Dialog=399}] Dialog 298