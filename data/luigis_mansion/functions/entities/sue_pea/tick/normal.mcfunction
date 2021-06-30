execute if entity @s[scores={Dialog=1..242}] run scoreboard players set #freeze_timer Selected 1
scoreboard players add @s[scores={Dialog=367..},tag=!vanish] Dialog 1
scoreboard players add @s[scores={Dialog=366},tag=watered] Dialog 1
scoreboard players add @s[scores={Dialog=306..365}] Dialog 1
scoreboard players add @s[scores={Dialog=305},tag=watered] Dialog 1
scoreboard players add @s[scores={Dialog=245..304}] Dialog 1
scoreboard players add @s[scores={Dialog=244},tag=watered] Dialog 1
scoreboard players add @s[scores={Dialog=1..243}] Dialog 1
tag @s[tag=watered] remove watered
execute if entity @e[tag=same_room,tag=!spectator,limit=1] unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if data storage luigis_mansion:data current_state.current_data.technical_data{sue_pea_spoke:1b} run scoreboard players set @s[scores={Dialog=1}] Dialog 243
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room,gamemode=!spectator] run function luigis_mansion:other/music/set/room
execute if entity @s[scores={Dialog=1}] run stopsound @a[tag=same_room,gamemode=!spectator] music
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room,gamemode=!spectator] Music 242
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:music.sue_pea music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=94}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sue_pea","color":"green"},{"translate":"luigis_mansion:dialog.sue_pea.1"}]}
execute if entity @s[scores={Dialog=175}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sue_pea","color":"green"},{"translate":"luigis_mansion:dialog.sue_pea.2"}]}
execute if entity @s[scores={Dialog=175}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sue_pea_spoke:1b}
effect give @s[scores={Dialog=243..367}] minecraft:invisibility 1 0 true
execute if entity @s[scores={Dialog=243..367}] at @e[tag=same_room,tag=!spectator] positioned ^ ^ ^8 run effect clear @s[distance=..8] minecraft:invisibility
execute if entity @s[scores={Dialog=367}] unless data storage luigis_mansion:data current_state.current_data.technical_data{sue_pea_snored:1b} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sue_pea","color":"green"},{"translate":"luigis_mansion:dialog.sue_pea.3"}]}
execute if entity @s[scores={Dialog=367}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sue_pea_snored:1b}
execute if entity @s[scores={Dialog=367..}] as @a[tag=same_room,gamemode=!spectator] unless entity @s[scores={MusicGroup=0,MusicType=36}] run function luigis_mansion:other/music/set/danger
execute if entity @s[scores={Dialog=367}] run tag @e[tag=haunted_clown_doll] add enabled
scoreboard players set @s[scores={Dialog=367}] VulnerableTime 100
scoreboard players set @s[scores={Dialog=467}] Dialog 366