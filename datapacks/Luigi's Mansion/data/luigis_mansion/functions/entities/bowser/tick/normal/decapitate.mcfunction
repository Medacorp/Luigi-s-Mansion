scoreboard players add @s Dialog 1
tag @s remove can_decapitate
scoreboard players reset @s[scores={Dialog=1}] ActionTime
scoreboard players set @s[scores={Dialog=1}] AnimationProg 0
data modify entity @s[scores={Dialog=1}] ArmorItems[3].tag.CustomModelData set value 88
tag @s[scores={Dialog=1}] remove vacuum
tag @s[scores={Dialog=1}] remove breathe_fire
teleport @s[scores={Dialog=1}] ~ 40 ~
function luigis_mansion:animations/bowser/decapitate
execute if entity @s[scores={Dialog=20}] at @e[tag=this_model,tag=body,limit=1] positioned ^ ^1 ^0.1 run function luigis_mansion:spawn_entities/portrait_ghost/king_boo
execute if entity @s[scores={Dialog=20}] at @e[tag=this_model,tag=body,limit=1] positioned ^ ^1 ^0.1 run tag @e[tag=king_boo,distance=..0.7,limit=1] add fight
teleport @s[scores={Dialog=2..21}] ^ ^0.1 ^-0.8
tag @s[scores={Dialog=40}] remove decapitate
scoreboard players set @s[scores={Dialog=40}] Dialog 0