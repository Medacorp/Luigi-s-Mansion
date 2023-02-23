execute if score #players Totals matches 1 run scoreboard players set #freeze_timer Selected 1
scoreboard players add @s[scores={BookChoice=1..}] Dialog 1
scoreboard players add @s[scores={Dialog=1..88}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..497},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.1"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.2"}]}
tellraw @s[scores={Dialog=88}] {"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.no","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 2"}}]}
scoreboard players enable @s[scores={Dialog=88}] BookChoice
scoreboard players set @s[scores={Dialog=90,BookChoice=2}] Dialog 498
execute if entity @s[scores={Dialog=90..497},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/thinking
tellraw @s[scores={Dialog=90}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.3"}]}
tellraw @s[scores={Dialog=146}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.4"}]}
tellraw @s[scores={Dialog=258}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.5"}]}
tellraw @s[scores={Dialog=282}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.6"}]}
tellraw @s[scores={Dialog=346}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.7"}]}
tellraw @s[scores={Dialog=426}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.nevilles_big_baby_care_diary.8"}]}
execute if entity @s[scores={Dialog=498},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players reset @s[scores={Dialog=498}] BookChoice
tag @s[scores={Dialog=498}] remove nevilles_big_baby_care_diary
scoreboard players set @s[scores={Dialog=498}] Dialog 0