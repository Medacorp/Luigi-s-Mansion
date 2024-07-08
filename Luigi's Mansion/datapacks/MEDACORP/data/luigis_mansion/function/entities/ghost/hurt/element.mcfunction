scoreboard players set @s[tag=!freeze] ActionTime 0
scoreboard players set @s SpawnTime 0
scoreboard players set @s TargetTask 0
execute unless entity @s[tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] run scoreboard players set @s ElementHurtTime 10
execute if entity @s[tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] run scoreboard players set @s[scores={ElementHurtTime=0}] ElementHurtTime 60
execute if entity @s[scores={ElementHurtTime=1}] run data modify entity @s data.attacked_by set value []
scoreboard players remove @s ElementHurtTime 1
execute if entity @s[scores={ElementHurtTime=10..}] run function luigis_mansion:entities/ghost/damage/element

execute unless entity @s[tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] run tag @s add stunable
tag @s remove burning_heart
tag @s remove watery_heart
tag @s remove frozen_heart
tag @s[tag=!freeze] remove attack
tag @s[tag=!freeze] remove complain
tag @s[tag=!freeze] remove laugh
tag @s[tag=!freeze] remove smug
tag @s[scores={ElementHurtTime=0}] remove element_hurt
tag @s[scores={ElementHurtTime=0},tag=elemental_freeze_animation] remove freeze_animation
tag @s[scores={ElementHurtTime=0}] remove freeze
tag @s[scores={ElementHurtTime=0}] remove elemental_freeze_animation