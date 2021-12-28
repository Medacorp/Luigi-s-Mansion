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
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.book_of_riddles.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.book_of_riddles.2"}]}
tellraw @s[scores={Dialog=72}] {"translate":"luigis_mansion:dialog.book_of_riddles.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.book_of_riddles.no","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 2"}}]}
scoreboard players enable @s[scores={Dialog=72}] BookChoice
scoreboard players set @s[scores={Dialog=74,BookChoice=2}] Dialog 346
tellraw @s[scores={Dialog=74}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.book_of_riddles.3"}]}
tellraw @s[scores={Dialog=114}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.book_of_riddles.4"}]}
tellraw @s[scores={Dialog=170}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.book_of_riddles.5"}]}
scoreboard players reset @s[scores={Dialog=346}] BookChoice
tag @s[scores={Dialog=346}] remove book_of_riddles
scoreboard players set @s[scores={Dialog=346}] Dialog 0