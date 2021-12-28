execute if score #players Totals matches 1 run scoreboard players set #freeze_timer Selected 1
scoreboard players add @s[scores={BookChoice=1..}] Dialog 1
scoreboard players add @s[scores={Dialog=1..104}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
summon minecraft:marker ~ ~ ~ {Tags:["home"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~
kill @e[tag=home,limit=1]
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.1"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.2"}]}
tellraw @s[scores={Dialog=104}] {"translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.no","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 2"}}]}
scoreboard players enable @s[scores={Dialog=104}] BookChoice
scoreboard players set @s[scores={Dialog=106,BookChoice=2}] Dialog 802
tellraw @s[scores={Dialog=106}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.3"}]}
tellraw @s[scores={Dialog=210}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.4"}]}
tellraw @s[scores={Dialog=298}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.5"}]}
tellraw @s[scores={Dialog=490}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.6"}]}
tellraw @s[scores={Dialog=570}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.7"}]}
scoreboard players reset @s[scores={Dialog=802}] BookChoice
tag @s[scores={Dialog=802}] remove e_gadds_guide_to_ghosts
scoreboard players set @s[scores={Dialog=802}] Dialog 0