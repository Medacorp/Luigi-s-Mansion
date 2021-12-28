execute if score #players Totals matches 1 run scoreboard players set #freeze_timer Selected 1
scoreboard players add @s[scores={BookChoice=1..}] Dialog 1
scoreboard players add @s[scores={Dialog=1..88}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
summon minecraft:marker ~ ~ ~ {Tags:["home"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~
kill @e[tag=home,limit=1]
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.1"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.2"}]}
tellraw @s[scores={Dialog=88}] {"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.no","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 2"}}]}
scoreboard players enable @s[scores={Dialog=88}] BookChoice
scoreboard players set @s[scores={Dialog=90,BookChoice=2}] Dialog 498
tellraw @s[scores={Dialog=90}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.3"}]}
tellraw @s[scores={Dialog=146}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.4"}]}
tellraw @s[scores={Dialog=258}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.5"}]}
tellraw @s[scores={Dialog=282}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.6"}]}
tellraw @s[scores={Dialog=346}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.7"}]}
tellraw @s[scores={Dialog=426}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.8"}]}
scoreboard players reset @s[scores={Dialog=498}] BookChoice
tag @s[scores={Dialog=498}] remove nevilles_big_baby_care_diary
scoreboard players set @s[scores={Dialog=498}] Dialog 0