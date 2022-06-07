scoreboard players set @s[tag=!freeze] ActionTime 0
scoreboard players set @s[scores={ElementHurtTime=0},tag=!freeze] AnimationProg 0
execute unless entity @s[tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] run scoreboard players set @s ElementHurtTime 10
execute if entity @s[tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] run scoreboard players set @s[scores={ElementHurtTime=0}] ElementHurtTime 60
execute if entity @s[scores={ElementHurtTime=1}] run data modify entity @s ArmorItems[3].tag merge value {attacked_by:[]}
scoreboard players remove @s ElementHurtTime 1
execute if entity @s[scores={ElementHurtTime=10..}] run function luigis_mansion:entities/ghost/hurt_element_damage

execute unless entity @s[tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] run tag @s add stunable
tag @s[tag=!freeze] remove attack
tag @s[tag=!freeze] remove laugh
tag @s[tag=!freeze] remove complain
tag @s[tag=!freeze] remove smug
tag @s remove burning_heart
tag @s remove watery_heart
tag @s remove frozen_heart
tag @s[scores={ElementHurtTime=0}] remove element_hurt
tag @s[scores={ElementHurtTime=0}] remove freeze