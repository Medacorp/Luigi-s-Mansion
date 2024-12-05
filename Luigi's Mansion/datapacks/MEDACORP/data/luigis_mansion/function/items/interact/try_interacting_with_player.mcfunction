tag @e[tag=luigi,tag=!me,distance=..2,limit=1] add interacting_with_me

execute if entity @e[tag=interacting_with_me,scores={Health=1..},limit=1] run function luigis_mansion:entities/luigi/animation/set/talk
execute if entity @e[tag=interacting_with_me,scores={Health=1..},limit=1] run tag @s add talk
execute if score #can_revive Selected matches 1 unless entity @e[tag=interacting_with_me,scores={Health=1..},limit=1] run function luigis_mansion:entities/luigi/animation/set/revive
execute if score #can_revive Selected matches 1 unless entity @e[tag=interacting_with_me,scores={Health=1..},limit=1] run tag @s add talk
execute if score #can_revive Selected matches 1 as @e[tag=interacting_with_me,limit=1] unless entity @s[scores={Health=1..}] run data modify entity @s data.reviver set from entity @e[tag=me,limit=1] UUID
tag @e[tag=interacting_with_me,limit=1] remove interacting_with_me