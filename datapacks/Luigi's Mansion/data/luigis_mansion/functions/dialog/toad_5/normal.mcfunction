scoreboard players set #freeze_timer Selected 1
execute if entity @a[scores={Toad5Choice=1..},limit=1] run scoreboard players add @s[scores={Dialog=93..}] Dialog 1
scoreboard players add @s[scores={Dialog=..92}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..863,IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/answer_phone
execute if entity @s[scores={Dialog=20}] run tellraw @a[scores={Room=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.unknown","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.1"}]}
execute if entity @s[scores={Dialog=92}] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} run tellraw @a[scores={Room=56}] {"translate":"luigis_mansion:dialog.toad_5.yes","color":"green","with":[{"selector":"@s","clickEvent":{"action":"run_command","value":"/trigger Toad5Choice set 1"}}],"clickEvent":{"action":"run_command","value":"/trigger Toad5Choice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.toad_5.no","clickEvent":{"action":"run_command","value":"/trigger Toad5Choice set 2"}}]}
execute if entity @s[scores={Dialog=92}] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} run scoreboard players enable @s Toad5Choice
execute if entity @s[scores={Dialog=92}] if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} run scoreboard players set @s Toad5Choice 1
execute if entity @s[scores={Dialog=94,Toad5Choice=1..}] as @a[scores={Toad5Choice=0}] run trigger Toad5Choice set 0
execute if entity @s[scores={Dialog=94,Toad5Choice=1}] if score #players Totals matches 1 run tellraw @a[scores={Room=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.unknown","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=94,Toad5Choice=1}] if score #players Totals matches 2.. run tellraw @a[scores={Room=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.unknown","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.1.more"}]}
execute if entity @s[scores={Dialog=118..864,Toad5Choice=1}] as @a[scores={Room=56},gamemode=!spectator] run function luigis_mansion:other/music/set/toad
execute if entity @s[scores={Dialog=118,Toad5Choice=1}] run tellraw @a[scores={Room=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.2"}]}
execute if entity @s[scores={Dialog=256,Toad5Choice=1}] run tellraw @a[scores={Room=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.3"}]}
execute if entity @s[scores={Dialog=408,Toad5Choice=1}] if score #players Totals matches 1 run tellraw @a[scores={Room=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.4"}]}
execute if entity @s[scores={Dialog=408,Toad5Choice=1}] if score #players Totals matches 2.. run tellraw @a[scores={Room=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.4.more"}]}
execute if entity @s[scores={Dialog=552,Toad5Choice=1}] if score #players Totals matches 1 run tellraw @a[scores={Room=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.5"}]}
execute if entity @s[scores={Dialog=552,Toad5Choice=1}] if score #players Totals matches 2.. run tellraw @a[scores={Room=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.5.more"}]}
execute if entity @s[scores={Dialog=712,Toad5Choice=1}] run tellraw @a[scores={Room=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.yes.6"}]}
execute if entity @s[scores={Dialog=864,Toad5Choice=1}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {telephone_2:1b}
execute if entity @s[scores={Dialog=94,Toad5Choice=2}] run advancement grant @a[scores={Toad5Choice=2}] only luigis_mansion:challenges/go_help_yourself telephone_room
execute if entity @s[scores={Dialog=94,Toad5Choice=2}] run tellraw @a[scores={Room=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.unknown","color":"green"},{"translate":"luigis_mansion:dialog.toad_5.no.1"}]}
execute if entity @s[scores={Dialog=102,Toad5Choice=2}] run scoreboard players set @s Dialog 863
execute if entity @s[scores={Dialog=864}] run scoreboard players reset @a Toad5Choice
execute if entity @s[scores={Dialog=864}] as @a[scores={Room=56},gamemode=!spectator] run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={Dialog=864}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {telephone_1:1b}
execute if entity @s[scores={Dialog=864},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=864}] remove toad_5_dialog
scoreboard players set @s[scores={Dialog=864}] Dialog 0