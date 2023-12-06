scoreboard players set @s[scores={HurtTime=1..},tag=!hurt_animation] ActionTime 0
scoreboard players set @s[scores={HurtTime=1..},tag=!hurt_animation] HurtTime 0
scoreboard players set @s[scores={AnimationProgress=1..},tag=!hurt_animation] AnimationProgress 0
scoreboard players add @s[scores={HurtTime=1..29}] HurtTime 1
execute unless entity @s[scores={HurtTime=1..}] run scoreboard players set @s HurtTime 1
tag @s[scores={HurtTime=1}] remove attack
tag @s[scores={HurtTime=1}] remove laugh
tag @s[scores={HurtTime=1}] remove complain
tag @s[scores={HurtTime=1}] add hurt_animation
scoreboard players set @s[scores={HurtTime=1}] MushroomTimer 200
scoreboard players remove @s MushroomTimer 1
execute if entity @s[scores={MushroomTimer=0},tag=portrait_ghost,tag=!no_poison_mushroom_dropping] run function luigis_mansion:entities/ghost/drop_poison_mushroom
tag @s[scores={HurtTime=30},tag=!no_ai] add fleeing
execute at @s[scores={HurtTime=1..21},tag=!ground_bound,tag=!ceiling_ghost] run function luigis_mansion:entities/ghost/hurt_move
tag @s[tag=remove_from_existence] remove in_vacuum
execute if entity @s[tag=!in_vacuum,tag=!no_ai] if score #debug_messages Selected matches 2.. run tellraw @a {"type":"translatable","translate":"luigis_mansion:message.debug.format","with":[{"type":"translatable","translate":"luigis_mansion:message.debug","color":"gold"},{"type":"translatable","translate":"luigis_mansion:message.debug.ghost_escape.vacuum"}]}
tag @s[tag=!in_vacuum,tag=!no_ai] add vanish
tag @s[tag=!in_vacuum,tag=!no_ai] remove fleeing
tag @s[tag=!in_vacuum,tag=!no_ai] remove hurt
execute if entity @s[tag=!in_vacuum] run data modify entity @s ArmorItems[3].tag.luigis_mansion.attacked_by set value []
scoreboard players set @s[tag=vanish] AnimationProgress 0
scoreboard players set @s[tag=vanish] ActionTime 0