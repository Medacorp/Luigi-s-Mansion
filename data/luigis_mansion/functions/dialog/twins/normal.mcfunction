execute if entity @a[scores={TwinsChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=269..}] Dialog 1
scoreboard players add @s[scores={Dialog=..268}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=41}] run scoreboard players set @a[tag=same_room] MusicType 23
execute if entity @s[scores={Dialog=41}] run scoreboard players set @a[tag=same_room] Music 0
execute if entity @s[scores={Dialog=61}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.orville","color":"green"},{"translate":"luigis_mansion:dialog.twins.1"}]}
execute if entity @s[scores={Dialog=61}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.orville","color":"green"},{"translate":"luigis_mansion:dialog.twins.1.more"}]}
execute if entity @s[scores={Dialog=148}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.2"}]}
execute if entity @s[scores={Dialog=148}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.2.more"}]}
execute if entity @s[scores={Dialog=228}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.orville","color":"green"},{"translate":"luigis_mansion:dialog.twins.3"}]}
execute if entity @s[scores={Dialog=268}] run tellraw @a {"translate":"luigis_mansion:message.options","color":"green","extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.twins.yes","clickEvent":{"action":"run_command","value":"/trigger TwinsChoice set 1"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.twins.no","clickEvent":{"action":"run_command","value":"/trigger TwinsChoice set 2"}}]}
execute if entity @s[scores={Dialog=268}] run scoreboard players enable @a[tag=same_room] TwinsChoice
execute if entity @s[scores={Dialog=270}] if entity @a[scores={TwinsChoice=1..}] as @a[scores={TwinsChoice=0}] run trigger TwinsChoice set 0
execute if entity @s[scores={Dialog=270}] if entity @a[scores={TwinsChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.yes.1"}]}
execute if entity @s[scores={Dialog=278}] if entity @a[scores={TwinsChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.orville","color":"green"},{"translate":"luigis_mansion:dialog.twins.yes.2"}]}
execute if entity @s[scores={Dialog=278}] if entity @a[scores={TwinsChoice=1}] run scoreboard players set #twins_room Wave 3
execute if entity @s[scores={Dialog=270}] if entity @a[scores={TwinsChoice=2}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.orville","color":"green"},{"translate":"luigis_mansion:dialog.twins.no.1"}]}
execute if entity @s[scores={Dialog=310}] if entity @a[scores={TwinsChoice=2}] run scoreboard players set @s Dialog 334
execute if entity @s[scores={Dialog=334}] run scoreboard players set @a TwinsChoice 0
tag @s[scores={Dialog=334}] add remove_from_existence
execute if entity @s[tag=remove_from_existence] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=remove_from_existence] as @a[scores={TwinsChoice=0..}] run trigger TwinsChoice set 0
execute if entity @s[tag=remove_from_existence] run tag @e[tag=henry,tag=dialog,limit=1] add remove_from_existence
execute if entity @s[tag=remove_from_existence] run teleport @e[tag=henry,tag=dialog,limit=1] ~ ~-100 ~
teleport @s[tag=remove_from_existence] ~ ~-100 ~