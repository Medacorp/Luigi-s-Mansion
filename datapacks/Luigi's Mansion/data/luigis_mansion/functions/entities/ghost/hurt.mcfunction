scoreboard players set @s[scores={HurtTime=1..},tag=!hurt_animation] ActionTime 0
scoreboard players set @s[scores={HurtTime=1..},tag=!hurt_animation] HurtTime 0
scoreboard players set @s[scores={AnimationProg=1..},tag=!hurt_animation] AnimationProg 0
scoreboard players add @s[scores={HurtTime=1..29}] HurtTime 1
execute unless entity @s[scores={HurtTime=1..}] run scoreboard players set @s HurtTime 1
tag @s[scores={HurtTime=1}] remove attack
tag @s[scores={HurtTime=1}] remove laugh
tag @s[scores={HurtTime=1}] remove complain
tag @s[scores={HurtTime=1}] add hurt_animation
scoreboard players set @s[scores={HurtTime=1}] MushroomTimer 200
scoreboard players remove @s MushroomTimer 1
execute if entity @s[scores={MushroomTimer=0},tag=portrait_ghost,tag=!no_poison_mushroom_dropping] run function luigis_mansion:entities/ghost/drop_poison_mushroom
tag @s[scores={HurtTime=30},tag=!dialog] add fleeing
execute at @s[scores={HurtTime=1..21},tag=!ground_bound,tag=!ceiling_ghost] run function luigis_mansion:entities/ghost/hurt_move
tag @s[tag=remove_from_existence] remove in_vacuum
execute if entity @s[tag=!in_vacuum,tag=!dialog] if score #debug Selected matches 1 run say [DEBUG] The ghost escaped because it was no longer in a vacuum.
tag @s[tag=!in_vacuum,tag=!dialog] add vanish
tag @s[tag=!in_vacuum,tag=!dialog] remove fleeing
tag @s[tag=!in_vacuum,tag=!dialog] remove hurt
execute if entity @s[tag=!in_vacuum] run data modify entity @s ArmorItems[3].tag merge value {attacked_by:[]}
scoreboard players set @s[tag=vanish] AnimationProg 0
scoreboard players set @s[tag=vanish] ActionTime 0