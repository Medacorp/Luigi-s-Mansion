scoreboard players set #freeze_timer Selected 1
scoreboard players add @s[scores={Dialog=1234}] Dialog 1
execute if entity @a[scores={Toad1Choice=1..},limit=1] run scoreboard players add @s[scores={Dialog=945..}] Dialog 1
scoreboard players add @s[scores={Dialog=..944}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..1263}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=1..1264}] as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
execute if entity @s[scores={Dialog=1}] if data storage luigis_mansion:data current_state.current_data.technical_data{toad_1_spoke:1b} run scoreboard players set @s Dialog 728
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.toad.cry_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.1"}]}
execute if entity @s[scores={Dialog=80}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.2","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=80}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.2.more"}]}
execute if entity @s[scores={Dialog=112}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
execute if entity @s[scores={Dialog=112}] run playsound luigis_mansion:entity.toad.wow neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=112}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.3","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=112}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.3.more"}]}
data remove entity @s[scores={Dialog=112}] data.animation
execute if entity @s[scores={Dialog=224}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.4"}]}
execute if entity @s[scores={Dialog=224}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.4.more"}]}
data modify entity @s[scores={Dialog=224}] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if entity @s[scores={Dialog=440}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.5"}]}
data modify entity @s[scores={Dialog=728}] data.animation set value {namespace:"luigis_mansion",id:"cry"}
execute if entity @s[scores={Dialog=728}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {toad_1_spoke:1b}
execute if entity @s[scores={Dialog=728}] run playsound luigis_mansion:entity.toad.cry_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=728}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.6"}]}
execute if entity @s[scores={Dialog=728}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.6.more"}]}
execute if entity @s[scores={Dialog=944..945}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/think
execute if entity @s[scores={Dialog=944}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"luigis_mansion:dialog.toad_1.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger Toad1Choice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.no","clickEvent":{"action":"run_command","value":"/trigger Toad1Choice set 2"}}]}
execute if entity @s[scores={Dialog=944}] run scoreboard players enable @a[tag=same_room] Toad1Choice
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=1..}] as @a[scores={Toad1Choice=0}] run trigger Toad1Choice set 0
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=1}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/enthusiastic
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=1}] run data remove entity @s data.animation
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=1}] run tag @s add turning_on_lights
execute if entity @s[scores={Dialog=966}] if entity @a[scores={Toad1Choice=1}] run playsound luigis_mansion:entity.toad.yahoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=966}] if entity @a[scores={Toad1Choice=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.yes.1","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=966}] if entity @a[scores={Toad1Choice=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.yes.1.more"}]}
execute if entity @s[scores={Dialog=1062}] if score #mansion_data_index Selected matches 1 run function 3ds_remake:room/hidden/foyer/clear
execute if entity @s[scores={Dialog=1062}] if score #mansion_data_index Selected matches 0 run function luigis_mansion:room/hidden/foyer/clear
execute if entity @s[scores={Dialog=1062}] if score #mansion_data_index Selected matches 1 run function 3ds_remake:room/hidden/hallway_1/clear
execute if entity @s[scores={Dialog=1062}] if score #mansion_data_index Selected matches 0 run function luigis_mansion:room/hidden/hallway_1/clear
data modify entity @s[scores={Dialog=1082}] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if entity @s[scores={Dialog=1082}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.yes.2"}]}
execute if entity @s[scores={Dialog=1082}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.yes.2.more"}]}
data remove entity @s[scores={Dialog=1234}] data.animation
execute if entity @s[scores={Dialog=1234}] run scoreboard players set @a Toad1Choice 0
execute if entity @s[scores={Dialog=1234}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"luigis_mansion:message.save.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger Toad1Choice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:message.save.no","clickEvent":{"action":"run_command","value":"/trigger Toad1Choice set 2"}}]}
execute if entity @s[scores={Dialog=1234}] run scoreboard players enable @a[tag=same_room] Toad1Choice
execute if entity @s[scores={Dialog=1236}] as @a[scores={Toad1Choice=1},limit=1] run function luigis_mansion:data/save
execute if entity @s[scores={Dialog=1236}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.yes.3"}]}
execute if entity @s[scores={Dialog=1236}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.yes.3.more"}]}
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=2}] run advancement grant @a[scores={Toad1Choice=2}] only luigis_mansion:challenges/go_help_yourself foyer
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=2}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=2}] run playsound luigis_mansion:entity.toad.mama_mia neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=2}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.no.1"}]}
execute if entity @s[scores={Dialog=978}] if entity @a[scores={Toad1Choice=2}] run scoreboard players set @s Dialog 1284
execute if entity @s[scores={Dialog=1284}] run scoreboard players set @a Toad1Choice 0
execute if entity @s[scores={Dialog=1284}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=1284}] remove talk
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
tag @s[tag=!talk] remove turning_on_lights
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=!talk] run scoreboard players reset @a[scores={Toad1Choice=0..}] Toad1Choice
data remove entity @s[tag=!talk,scores={Dialog=1062..}] data.animation
data modify entity @s[tag=!talk,scores={Dialog=..1061}] data.animation set value {namespace:"luigis_mansion",id:"cry"}
scoreboard players set @s[tag=!talk] Dialog 0