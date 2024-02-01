execute if score #players Totals matches 1 run scoreboard players set #freeze_timer Selected 1
scoreboard players add @s[scores={BookChoice=1..}] Dialog 1
scoreboard players add @s[scores={Dialog=1..96}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..497},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
tellraw @s[scores={Dialog=1}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.lydias_child_care_diary.1"}]}
tellraw @s[scores={Dialog=48}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.lydias_child_care_diary.2"}]}
tellraw @s[scores={Dialog=96}] {"type":"translatable","translate":"luigis_mansion:dialog.lydias_child_care_diary.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:dialog.lydias_child_care_diary.no","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 2"}}]}
scoreboard players enable @s[scores={Dialog=96}] BookChoice
scoreboard players set @s[scores={Dialog=98,BookChoice=2}] Dialog 498
execute if entity @s[scores={Dialog=98..497},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/think
tellraw @s[scores={Dialog=98}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.lydias_child_care_diary.3"}]}
tellraw @s[scores={Dialog=314}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.lydias_child_care_diary.4"}]}
execute if entity @s[scores={Dialog=498},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players reset @s[scores={Dialog=498}] BookChoice
tag @s[scores={Dialog=498}] remove lydias_child_care_diary
scoreboard players set @s[scores={Dialog=498}] Dialog 0