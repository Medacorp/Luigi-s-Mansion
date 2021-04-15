execute if entity @a[scores={Toad5Choice=1..},limit=1] run scoreboard players add @s[scores={Dialog=73..}] Dialog 1
scoreboard players add @s[scores={Dialog=..72}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run tellraw @a[scores={Room=44}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.unknown","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.1"}]}
execute if entity @s[scores={Dialog=72}] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} run tellraw @a[scores={Room=44}] {"translate":"luigis_mansion:message.options","color":"green","extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.toad_5.yes","with":[{"selector":"@s","clickEvent":{"action":"run_command","value":"/trigger Toad5Choice set 1"}}],"clickEvent":{"action":"run_command","value":"/trigger Toad5Choice set 1"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.toad_5.no","clickEvent":{"action":"run_command","value":"/trigger Toad5Choice set 2"}}]}
execute if entity @s[scores={Dialog=72}] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} run scoreboard players enable @s Toad5Choice
execute if entity @s[scores={Dialog=72}] if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} run scoreboard players set @s Toad5Choice 1
execute if entity @s[scores={Dialog=74,Toad5Choice=1..}] as @a[scores={Toad5Choice=0}] run trigger Toad5Choice set 0
execute if entity @s[scores={Dialog=74,Toad5Choice=1}] if score #players Totals matches 1 run tellraw @a[scores={Room=44}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.unknown","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=74,Toad5Choice=1}] if score #players Totals matches 2.. run tellraw @a[scores={Room=44}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.unknown","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.1.more"}]}
execute if entity @s[scores={Dialog=98,Toad5Choice=1}] run scoreboard players set @a[scores={Room=44}] MusicType 10
execute if entity @s[scores={Dialog=98,Toad5Choice=1}] run scoreboard players set @a[scores={Room=44}] Music 0
execute if entity @s[scores={Dialog=98,Toad5Choice=1}] run tellraw @a[scores={Room=44}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.2"}]}
execute if entity @s[scores={Dialog=236,Toad5Choice=1}] run tellraw @a[scores={Room=44}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.3"}]}
execute if entity @s[scores={Dialog=388,Toad5Choice=1}] if score #players Totals matches 1 run tellraw @a[scores={Room=44}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.4"}]}
execute if entity @s[scores={Dialog=388,Toad5Choice=1}] if score #players Totals matches 2.. run tellraw @a[scores={Room=44}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.4.more"}]}
execute if entity @s[scores={Dialog=532,Toad5Choice=1}] if score #players Totals matches 1 run tellraw @a[scores={Room=44}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.5"}]}
execute if entity @s[scores={Dialog=532,Toad5Choice=1}] if score #players Totals matches 2.. run tellraw @a[scores={Room=44}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.5.more"}]}
execute if entity @s[scores={Dialog=692,Toad5Choice=1}] run tellraw @a[scores={Room=44}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.6"}]}
execute if entity @s[scores={Dialog=844,Toad5Choice=1}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {telephone_2:1b}
execute if entity @s[scores={Dialog=74,Toad5Choice=2}] run advancement grant @a[scores={Toad5Choice=2}] only luigis_mansion:challenges/go_help_yourself telephone_room
execute if entity @s[scores={Dialog=74,Toad5Choice=2}] run tellraw @a[scores={Room=44}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.unknown","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.no.1"}]}
execute if entity @s[scores={Dialog=82,Toad5Choice=2}] run scoreboard players set @s Dialog 843
execute if entity @s[scores={Dialog=844}] run scoreboard players set @a Toad5Choice 0
execute if entity @s[scores={Dialog=844}] as @a[scores={MusicType=10}] run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={Dialog=844}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {telephone_1:1b}
tag @s[scores={Dialog=844}] remove toad_5_dialog
scoreboard players reset @s[scores={Dialog=844}] Dialog