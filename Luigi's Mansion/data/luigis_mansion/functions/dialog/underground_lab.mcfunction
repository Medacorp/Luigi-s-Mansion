scoreboard players add @s[scores={Dialog=130}] Dialog 1
execute if entity @a[scores={EGaddLabChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=57..}] Dialog 1
execute if entity @a[scores={MansionChoice=0..},limit=1] run scoreboard players add @s[scores={Dialog=57..}] Dialog 1
execute if entity @a[scores={MansionChoice=..-2},limit=1] run scoreboard players add @s[scores={Dialog=57..}] Dialog 1
scoreboard players add @s[scores={Dialog=..56}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] in minecraft:overworld if block 771 97 2 minecraft:air if data storage luigis_mansion:data current_state.current_data.rooms run tag @s add no_mansion
tag @s[scores={Dialog=1}] add nod
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.underground_lab.1","with":[{"selector":"@a[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.underground_lab.1.more"}]}
tag @s[scores={Dialog=56}] remove nod
tag @s[scores={Dialog=56}] add listen
execute if entity @s[scores={Dialog=56}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.options","color":"green"}
execute if entity @s[tag=!no_mansion] run function #luigis_mansion:mansion_options
execute if entity @s[scores={Dialog=56}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:dialog.underground_lab.training","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddLabChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.underground_lab.gallery","clickEvent":{"action":"run_command","value":"/trigger EGaddLabChoice set 2"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.underground_lab.portrificationizer","clickEvent":{"action":"run_command","value":"/trigger EGaddLabChoice set 3"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.underground_lab.old_data","clickEvent":{"action":"run_command","value":"/trigger EGaddLabChoice set 4"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.underground_lab.nowhere","clickEvent":{"action":"run_command","value":"/trigger EGaddLabChoice set 5"}}]}
execute if entity @s[scores={Dialog=56}] run scoreboard players set @a[tag=same_room] MansionChoice -1
execute if entity @s[scores={Dialog=56}] run scoreboard players enable @a[tag=same_room] MansionChoice
execute if entity @s[scores={Dialog=56}] run scoreboard players enable @a[tag=same_room] EGaddLabChoice
tag @s[scores={Dialog=58}] remove listen
tag @s[scores={Dialog=58}] add nod
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddLabChoice=1..},limit=1] as @a unless entity @s[scores={MansionChoice=-1}] run trigger MansionChoice set -1
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddLabChoice=1..},limit=1] as @a[scores={EGaddLabChoice=0}] run trigger EGaddLabChoice set 0
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddLabChoice=1},limit=1] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.underground_lab.training.1"}]}
execute if entity @s[scores={Dialog=74}] if entity @a[scores={EGaddLabChoice=1},limit=1] as @a[tag=same_room] run function luigis_mansion:entities/e_gadd/to_training
execute if entity @s[scores={Dialog=74}] if entity @a[scores={EGaddLabChoice=1},limit=1] run scoreboard players set @s Dialog 148
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddLabChoice=2},limit=1] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.underground_lab.gallery.1"}]}
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddLabChoice=2},limit=1] as @a[tag=same_room] run function luigis_mansion:entities/e_gadd/to_gallery
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddLabChoice=2},limit=1] run scoreboard players set @s Dialog 148
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddLabChoice=3},limit=1] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.underground_lab.portrificationizer.1"}]}
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddLabChoice=3},limit=1] as @a[tag=same_room] run function luigis_mansion:entities/e_gadd/to_portrificationizer
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddLabChoice=3},limit=1] run scoreboard players set @s Dialog 148
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddLabChoice=4},limit=1] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.underground_lab.old_data.1"}]}
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddLabChoice=4},limit=1] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.underground_lab.old_data.1.more"}]}
tag @s[scores={Dialog=130}] add listen
tag @s[scores={Dialog=130}] remove nod
execute if entity @s[scores={Dialog=130}] if entity @a[scores={EGaddLabChoice=4},limit=1] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.options","color":"green","extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.underground_lab.old_data.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddLabChoice set 1"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.underground_lab.old_data.no","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddLabChoice set 2"}}]}
execute if entity @s[scores={Dialog=130}] if entity @a[scores={EGaddLabChoice=4},limit=1] run scoreboard players enable @a[tag=same_room] EGaddLabChoice
execute if entity @s[scores={Dialog=130}] if entity @a[scores={EGaddLabChoice=4},limit=1] run scoreboard players set @a EGaddLabChoice 0
tag @s[scores={Dialog=132}] remove listen
tag @s[scores={Dialog=132}] add nod
execute if entity @s[scores={Dialog=132}] as @a[scores={EGaddLabChoice=1},limit=1] run function luigis_mansion:entities/player/load_mansion
execute if entity @s[scores={Dialog=132}] if entity @a[scores={EGaddLabChoice=2},limit=1] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.underground_lab.old_data.no.1"}]}
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddLabChoice=5},limit=1] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.underground_lab.nowhere.1"}]}
execute if entity @s[scores={Dialog=74}] if entity @a[scores={EGaddLabChoice=5},limit=1] run scoreboard players set @s Dialog 148
execute if entity @s[scores={Dialog=148}] run scoreboard players set @a EGaddLabChoice 0
tag @s[scores={Dialog=148}] remove talk
tag @s[scores={Dialog=148}] remove cannot_change
execute unless entity @a[tag=same_room,distance=..7] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[scores={EGaddLabChoice=0..}] run trigger EGaddLabChoice set 0
execute if entity @s[tag=!talk] as @a unless entity @s[scores={MansionChoice=-1}] run trigger MansionChoice set -1
scoreboard players set @s[tag=!talk] Dialog 0
tag @s[tag=!talk] remove nod
tag @s[tag=!talk] remove listen
tag @s[tag=!talk] remove no_mansion