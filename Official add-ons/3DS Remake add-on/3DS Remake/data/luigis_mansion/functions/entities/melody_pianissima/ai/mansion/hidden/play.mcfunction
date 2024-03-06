execute if entity @s[scores={Dialog=1..}] run scoreboard players set #freeze_timer Selected 1
execute unless entity @s[scores={Variant=1..,Dialog=..999}] run scoreboard players add @s Dialog 1
execute if entity @a[scores={MelodyChoice=1}] run scoreboard players set @s[scores={Dialog=..999}] Dialog 1000
execute if entity @a[scores={MelodyChoice=2}] run scoreboard players set @s[scores={Dialog=..999}] Dialog 2000
tag @s[scores={Dialog=1}] add visible
execute if entity @s[scores={Dialog=1..1271}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=2000..2227}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=80..439}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if entity @s[scores={Dialog=80}] if data storage luigis_mansion:data current_state.current_data.technical_data{melody_pianissima_spoke:1b} run scoreboard players set @s Dialog 304
execute if entity @s[scores={Dialog=80}] run playsound luigis_mansion:entity.melody_pianissima.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=80}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.1"}]}
execute if entity @s[scores={Dialog=192}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.2"}]}
data modify entity @s[scores={Dialog=304}] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if entity @s[scores={Dialog=304}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {melody_pianissima_spoke:1b}
execute if entity @s[scores={Dialog=304}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.3"}]}
execute if entity @s[scores={Dialog=304}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.3.more"}]}
execute if entity @s[scores={Dialog=440}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=440}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.4"}]}
execute if entity @s[scores={Dialog=471..1000}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/think
execute if entity @s[scores={Dialog=471}] run function luigis_mansion:room/hidden/conservatory/stop_music
execute if entity @s[scores={Dialog=472}] store result score @s Variant run random value 1..2
execute if entity @s[scores={Dialog=472..998,Variant=1}] run function luigis_mansion:entities/melody_pianissima/question/composer
execute if entity @s[scores={Dialog=472..998,Variant=2}] run function luigis_mansion:entities/melody_pianissima/question/game
execute if entity @s[scores={Dialog=1000..}] run scoreboard players reset @a MelodyChoice

execute if entity @s[scores={Dialog=1000}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
data modify entity @s[scores={Dialog=1000}] data.animation set value {namespace:"luigis_mansion",id:"rage"}
execute if entity @s[scores={Dialog=1000}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.no.1"}]}
execute if entity @s[scores={Dialog=1048}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.no.2"}]}
execute if entity @s[scores={Dialog=1048}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.no.2.more"}]}
data modify entity @s[scores={Dialog=1200}] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if entity @s[scores={Dialog=1200}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.melody_pianissima.no.3"}]}
execute if entity @s[scores={Dialog=1200}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.melody_pianissima.no.3.more"}]}
execute if entity @s[scores={Dialog=1304}] run scoreboard players set #conservatory Wave -1
execute if entity @s[scores={Dialog=1304}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/room
tag @s[scores={Dialog=1304}] add vanish
execute if entity @s[scores={Dialog=1304}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none

execute if entity @s[scores={Dialog=2000}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/enthusiastic
execute if entity @s[scores={Dialog=2020..2227}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
data modify entity @s[scores={Dialog=2020}] data.animation set value {namespace:"luigis_mansion",id:"laugh"}
execute if entity @s[scores={Dialog=2020}] run playsound luigis_mansion:entity.melody_pianissima.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=2020}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.yes.1"}]}
execute if entity @s[scores={Dialog=2020}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.yes.1.more"}]}
data modify entity @s[scores={Dialog=2060}] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if entity @s[scores={Dialog=2060}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.yes.2"}]}
execute if entity @s[scores={Dialog=2060}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.yes.2.more"}]}
execute if entity @s[scores={Dialog=2140}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.yes.3"}]}
execute if entity @s[scores={Dialog=2140}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.yes.3.more"}]}
data remove entity @s[scores={Dialog=2228}] data.animation
execute if entity @s[scores={Dialog=2228}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=2228}] run data modify entity @s ArmorItems[3].tag.luigis_mansion.scan_message set value {sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.melody_pianissima.scan.2"}',plural_message:'{"type":"translatable","translate":"luigis_mansion:message.melody_pianissima.scan.2.more"}'}
execute if entity @s[scores={Dialog=2228}] run scoreboard players set #conservatory Wave 3
execute if entity @s[scores={Dialog=2228}] positioned 657 11 40 rotated -180 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_music_sheet
execute if entity @s[scores={Dialog=2228}] positioned 657 11 41 rotated -180 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_music_sheet
execute if entity @s[scores={Dialog=2228}] positioned 657 11 42 rotated -180 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_music_sheet
execute if entity @s[scores={Dialog=2228}] positioned 656 11 40 rotated -180 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_music_sheet
execute if entity @s[scores={Dialog=2228}] positioned 656 11 41 rotated -180 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_music_sheet
execute if entity @s[scores={Dialog=2228}] positioned 656 11 42 rotated -180 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_music_sheet
scoreboard players reset @s[scores={Dialog=2228}] Dialog