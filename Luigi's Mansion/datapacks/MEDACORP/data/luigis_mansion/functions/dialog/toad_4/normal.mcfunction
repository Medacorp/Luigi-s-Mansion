scoreboard players set #freeze_timer Selected 1
execute if entity @a[scores={Toad4Choice=1..},limit=1] run scoreboard players add @s[scores={Dialog=705..}] Dialog 1
scoreboard players add @s[scores={Dialog=..704}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..893}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1..894}] as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
data remove entity @s[scores={Dialog=1}] data.animation
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.1"}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.1.more"}]}
execute if entity @s[scores={Dialog=96..703}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if entity @s[scores={Dialog=96}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.2"}]}
data modify entity @s[scores={Dialog=256}] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if entity @s[scores={Dialog=256}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.3"}]}
execute if entity @s[scores={Dialog=416}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.4"}]}
execute if entity @s[scores={Dialog=544}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.5"}]}
execute if entity @s[scores={Dialog=544}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.5.more"}]}
data remove entity @s[scores={Dialog=704}] data.animation
execute if entity @s[scores={Dialog=704..705}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/thinking
execute if entity @s[scores={Dialog=704}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"luigis_mansion:dialog.toad_4.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger Toad4Choice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.no","clickEvent":{"action":"run_command","value":"/trigger Toad4Choice set 2"}}]}
execute if entity @s[scores={Dialog=704}] run scoreboard players enable @a[tag=same_room] Toad4Choice
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=1..}] as @a[scores={Toad4Choice=0}] run trigger Toad4Choice set 0
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=1}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/enthusiastic
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=1}] run playsound luigis_mansion:entity.toad.wow neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=726}] if entity @a[scores={Toad4Choice=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.yes.1"}]}
execute if entity @s[scores={Dialog=726}] if entity @a[scores={Toad4Choice=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.yes.1.more"}]}
execute if entity @s[scores={Dialog=806}] if entity @a[scores={Toad4Choice=1}] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if entity @s[scores={Dialog=806}] if entity @a[scores={Toad4Choice=1}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.yes.2"}]}
execute if entity @s[scores={Dialog=830}] if entity @a[scores={Toad4Choice=1}] run playsound luigis_mansion:entity.toad.yahoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=830}] if entity @a[scores={Toad4Choice=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.yes.3","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=830}] if entity @a[scores={Toad4Choice=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.yes.3.more"}]}
execute if entity @s[scores={Dialog=894}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {toad_4_happy:1b}
execute if entity @s[scores={Dialog=894}] if entity @a[scores={Toad4Choice=1}] run scoreboard players set @s Dialog 633
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=2}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=2}] run advancement grant @a[scores={Toad4Choice=2}] only luigis_mansion:challenges/go_help_yourself courtyard
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=2}] run playsound luigis_mansion:entity.toad.mama_mia neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=2}] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"cry"}
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=2}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.no.1"}]}
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=2}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.no.1"}]}
execute if entity @s[scores={Dialog=746}] if entity @a[scores={Toad4Choice=2}] run scoreboard players set @s Dialog 894
execute if entity @s[scores={Dialog=894}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=894}] run scoreboard players set @a Toad4Choice 0
tag @s[scores={Dialog=894}] remove talk
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=!talk] run scoreboard players reset @a[scores={Toad4Choice=0..}] Toad4Choice
data remove entity @s[tag=!talk,scores={Dialog=894..}] data.animation
data modify entity @s[tag=!talk,scores={Dialog=..893}] data.animation set value {namespace:"luigis_mansion",id:"cry"}
scoreboard players set @s[tag=!talk] Dialog 0