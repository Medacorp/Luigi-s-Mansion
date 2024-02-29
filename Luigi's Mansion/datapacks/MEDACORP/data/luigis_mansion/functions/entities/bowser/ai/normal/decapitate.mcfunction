scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] ActionTime 0
tag @s[scores={Dialog=1}] remove vacuum_attack
tag @s[scores={Dialog=1}] remove breathe_fire
tag @s[scores={Dialog=1}] remove tail_attack
tag @s[scores={Dialog=1}] remove headless_run
tag @s[scores={Dialog=1}] remove run
tag @s[scores={Dialog=1}] remove walk
tag @s[scores={Dialog=1}] remove jump
execute if entity @s[scores={Dialog=1}] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_head"}}},limit=1] run data modify storage luigis_mansion:data entity set value {damage:{},owner:0,mansion:{namespace:"luigis_mansion",id:"normal"},tags:["decapitate"]}
execute if entity @s[scores={Dialog=1}] positioned ~ 37 ~ run function luigis_mansion:spawn_entities/bowser/head
teleport @s[scores={Dialog=1}] ~ 37 ~
data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"decapitate"}
data modify entity @s[scores={Dialog=1}] data.initial_animation_progress set value 0
execute if entity @s[scores={Dialog=20}] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] positioned ^ ^3.5 ^-0.4 run function luigis_mansion:spawn_entities/portrait_ghost/king_boo
tag @s[scores={Dialog=40}] remove decapitate
data modify entity @s[scores={Dialog=40}] data.animation set value {namespace:"luigis_mansion",id:"decapitated"}
scoreboard players set @s[scores={Dialog=40}] Dialog 0