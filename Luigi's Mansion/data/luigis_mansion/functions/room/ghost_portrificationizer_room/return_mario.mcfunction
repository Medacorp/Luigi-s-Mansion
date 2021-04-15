tag @e[tag=e_gadd] remove return_dialog
tag @e[tag=e_gadd] remove ending_dialog
tag @e[tag=e_gadd] remove ending
tag @e[tag=e_gadd] add mario_to_normal
scoreboard players set @e[tag=e_gadd] Dialog 0
execute as @a run trigger EGaddGPRChoice set 0
teleport @e[tag=e_gadd] 774 77 -12 90 0
