execute if score #players Totals matches 1 run scoreboard players set #freeze_timer Selected 1
scoreboard players add @s[scores={BookChoice=1..}] Dialog 1
scoreboard players add @s[scores={Dialog=1..72}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
summon minecraft:marker ~ ~ ~ {Tags:["home"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~
kill @e[tag=home,limit=1]
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.moldy_old_journal.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.moldy_old_journal.2"}]}
tellraw @s[scores={Dialog=72}] {"translate":"luigis_mansion:dialog.moldy_old_journal.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.moldy_old_journal.no","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 2"}}]}
scoreboard players enable @s[scores={Dialog=72}] BookChoice
scoreboard players set @s[scores={Dialog=74,BookChoice=2}] Dialog 610
tellraw @s[scores={Dialog=74}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.moldy_old_journal.3"}]}
tellraw @s[scores={Dialog=154}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.moldy_old_journal.4"}]}
tellraw @s[scores={Dialog=266}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.moldy_old_journal.5"}]}
tellraw @s[scores={Dialog=386}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.moldy_old_journal.6"}]}
tellraw @s[scores={Dialog=450}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.moldy_old_journal.7"}]}
tellraw @s[scores={Dialog=530}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.moldy_old_journal.8"}]}
scoreboard players reset @s[scores={Dialog=610}] BookChoice
tag @s[scores={Dialog=610}] remove moldy_old_journal
scoreboard players set @s[scores={Dialog=610}] Dialog 0