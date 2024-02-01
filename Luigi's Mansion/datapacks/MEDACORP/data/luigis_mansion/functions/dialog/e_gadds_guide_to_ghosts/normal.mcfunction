execute if score #players Totals matches 1 run scoreboard players set #freeze_timer Selected 1
scoreboard players add @s[scores={BookChoice=1..}] Dialog 1
scoreboard players add @s[scores={Dialog=1..104}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..801},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
tellraw @s[scores={Dialog=1}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.1"}]}
tellraw @s[scores={Dialog=56}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.2"}]}
tellraw @s[scores={Dialog=104}] {"type":"translatable","translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.no","color":"green","clickEvent":{"action":"run_command","value":"/trigger BookChoice set 2"}}]}
scoreboard players enable @s[scores={Dialog=104}] BookChoice
scoreboard players set @s[scores={Dialog=106,BookChoice=2}] Dialog 802
execute if entity @s[scores={Dialog=106..801},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/think
tellraw @s[scores={Dialog=106}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.3"}]}
tellraw @s[scores={Dialog=210}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.4"}]}
tellraw @s[scores={Dialog=298}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.5"}]}
tellraw @s[scores={Dialog=490}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.6"}]}
tellraw @s[scores={Dialog=570}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.e_gadds_guide_to_ghosts.7"}]}
execute if entity @s[scores={Dialog=802},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players reset @s[scores={Dialog=802}] BookChoice
tag @s[scores={Dialog=802}] remove e_gadds_guide_to_ghosts
scoreboard players set @s[scores={Dialog=802}] Dialog 0