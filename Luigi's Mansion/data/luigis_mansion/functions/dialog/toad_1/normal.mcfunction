scoreboard players add @s[scores={Dialog=1166}] Dialog 1
execute if entity @a[scores={Toad1Choice=1..},limit=1] run scoreboard players add @s[scores={Dialog=945..}] Dialog 1
scoreboard players add @s[scores={Dialog=..944}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] MusicType 10
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] Music 0
execute if entity @s[scores={Dialog=1}] if data storage luigis_mansion:data current_state.current_data.technical_data{toad_1_spoke:1b} run scoreboard players set @s Dialog 728
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.toad.cry_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.1"}]}
execute if entity @s[scores={Dialog=80}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.2","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=80}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.2.more"}]}
execute if entity @s[scores={Dialog=112}] run playsound luigis_mansion:entity.toad.wow neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=112}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.3","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=112}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.3.more"}]}
tag @s[scores={Dialog=112}] add happy
execute if entity @s[scores={Dialog=224}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.4"}]}
execute if entity @s[scores={Dialog=224}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.4.more"}]}
tag @s[scores={Dialog=224}] add explaining
execute if entity @s[scores={Dialog=440}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.5"}]}
tag @s[scores={Dialog=728}] remove explaining
tag @s[scores={Dialog=728}] remove happy
execute if entity @s[scores={Dialog=728}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {toad_1_spoke:1b}
execute if entity @s[scores={Dialog=728}] run playsound luigis_mansion:entity.toad.cry_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=728}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.6"}]}
execute if entity @s[scores={Dialog=728}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.6.more"}]}
execute if entity @s[scores={Dialog=944}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.options","color":"green","extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.toad_1.yes","clickEvent":{"action":"run_command","value":"/trigger Toad1Choice set 1"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.toad_1.no","clickEvent":{"action":"run_command","value":"/trigger Toad1Choice set 2"}}]}
execute if entity @s[scores={Dialog=944}] run scoreboard players enable @a[tag=same_room] Toad1Choice
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=1..}] as @a[scores={Toad1Choice=0}] run trigger Toad1Choice set 0
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=1}] run tag @s add happy
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=1}] run tag @s add turning_on_lights
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=1}] run playsound luigis_mansion:entity.toad.yahoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.yes.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.yes.1.more"}]}
execute if entity @s[scores={Dialog=1042}] run function luigis_mansion:room/normal/foyer/clear
tag @s[scores={Dialog=1062}] add explaining
execute if entity @s[scores={Dialog=1062}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.yes.2"}]}
execute if entity @s[scores={Dialog=1062}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.yes.2.more"}]}
tag @s[scores={Dialog=1166}] remove explaining
execute if entity @s[scores={Dialog=1166}] run scoreboard players set @a Toad1Choice 0
execute if entity @s[scores={Dialog=1166}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.options","color":"green","extra":[{"text":"\n"},{"translate":"luigis_mansion:message.save.yes","clickEvent":{"action":"run_command","value":"/trigger Toad1Choice set 1"}},{"text":"\n"},{"translate":"luigis_mansion:message.save.no","clickEvent":{"action":"run_command","value":"/trigger Toad1Choice set 2"}}]}
execute if entity @s[scores={Dialog=1166}] run scoreboard players enable @a[tag=same_room] Toad1Choice
execute if entity @s[scores={Dialog=1168}] as @a[scores={Toad1Choice=1},limit=1] run function luigis_mansion:entities/player/save_mansion
execute if entity @s[scores={Dialog=1168}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.yes.3"}]}
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=2}] run advancement grant @a[scores={Toad1Choice=2}] only luigis_mansion:challenges/go_help_yourself foyer
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=2}] run playsound luigis_mansion:entity.toad.mama_mia neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=946}] if entity @a[scores={Toad1Choice=2}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_1.no.1"}]}
execute if entity @s[scores={Dialog=978}] if entity @a[scores={Toad1Choice=2}] run scoreboard players set @s Dialog 1216
execute if entity @s[scores={Dialog=1216}] run scoreboard players set @a Toad1Choice 0
tag @s[scores={Dialog=1216}] remove talk
tag @s[scores={Dialog=1216}] remove turning_on_lights
execute unless entity @a[tag=same_room,distance=..7] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=!talk] as @a[scores={Toad1Choice=0..}] run trigger Toad1Choice set 0
tag @s[tag=!talk] remove explaining
tag @s[tag=!talk,scores={Dialog=..1041}] remove happy
scoreboard players set @s[tag=!talk] Dialog 0