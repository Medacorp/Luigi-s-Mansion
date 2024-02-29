execute if entity @s[scores={Dialog=1..242}] run scoreboard players set #freeze_timer Selected 1
scoreboard players add @s[scores={Dialog=367..}] Dialog 1
scoreboard players add @s[scores={Dialog=366},tag=in_water] Dialog 1
scoreboard players add @s[scores={Dialog=306..365}] Dialog 1
scoreboard players add @s[scores={Dialog=305},tag=in_water] Dialog 1
scoreboard players add @s[scores={Dialog=245..304}] Dialog 1
scoreboard players add @s[scores={Dialog=244},tag=in_water] Dialog 1
scoreboard players add @s[scores={Dialog=1..243}] Dialog 1
execute if entity @e[tag=same_room,tag=!spectator,tag=player,limit=1] unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if data storage luigis_mansion:data current_state.current_data.technical_data{sue_pea_spoke:1b} run scoreboard players set @s[scores={Dialog=1}] Dialog 243
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/room
execute if entity @s[scores={Dialog=1}] run stopsound @a[tag=same_room,tag=!spectator] music
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room,tag=!spectator] Music 242
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:music.sue_pea music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=94}] run playsound luigis_mansion:entity.sue_pea.go_away hostile @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=94}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sue_pea","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sue_pea.1"}]}
execute if entity @s[scores={Dialog=175}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sue_pea","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sue_pea.2"}]}
execute if entity @s[scores={Dialog=175}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sue_pea_spoke:1b}
tag @s[scores={Dialog=..242}] add visible
tag @s[scores={Dialog=243..366}] remove visible
execute if entity @s[scores={Dialog=243..366}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run tag @s[distance=..8] add visible
execute if entity @s[scores={Dialog=245}] run playsound luigis_mansion:entity.sue_pea.complain hostile @a[tag=same_room] ~ ~ ~ 1000
teleport @s[scores={Dialog=245..264}] ^ ^-0.05 ^0.05
teleport @s[scores={Dialog=285..304}] ^ ^0.05 ^-0.05
execute if entity @s[scores={Dialog=306}] run playsound luigis_mansion:entity.sue_pea.complain2 hostile @a[tag=same_room] ~ ~ ~ 1000
teleport @s[scores={Dialog=306..325}] ^ ^-0.05 ^0.05
teleport @s[scores={Dialog=346..365}] ^ ^0.05 ^-0.05
execute if entity @s[scores={Dialog=367}] unless data storage luigis_mansion:data current_state.current_data.technical_data{sue_pea_snored:1b} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sue_pea","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sue_pea.3"}]}
execute if entity @s[scores={Dialog=367}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sue_pea_snored:1b}
execute if entity @s[scores={Dialog=367..}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/danger
tag @s[scores={Dialog=367}] add visible
execute if entity @s[scores={Dialog=367}] run tag @e[tag=same_room,tag=haunted_clown_doll] add enabled
scoreboard players set @s[scores={Dialog=367}] VulnerableTime 100
execute if entity @s[scores={Dialog=367}] run playsound luigis_mansion:entity.sue_pea.wake_up hostile @a[tag=same_room] ~ ~ ~ 1000
teleport @s[scores={Dialog=367..386}] ^ ^-0.07 ^0.05
teleport @s[scores={Dialog=488..507}] ^ ^0.07 ^-0.05
tag @s[scores={Dialog=467}] remove visible
scoreboard players set @s[scores={Dialog=507}] Dialog 366

data remove entity @s data.animation
data modify entity @s[scores={Dialog=245..304}] data.animation set value {namespace:"luigis_mansion",id:"watered"}
data modify entity @s[scores={Dialog=306..365}] data.animation set value {namespace:"luigis_mansion",id:"watered"}
data modify entity @s[scores={Dialog=367..}] data.animation set value {namespace:"luigis_mansion",id:"wake_up"}
