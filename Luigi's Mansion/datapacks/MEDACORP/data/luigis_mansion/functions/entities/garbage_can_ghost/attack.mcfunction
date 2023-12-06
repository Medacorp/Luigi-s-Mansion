scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:old_animations/garbage_can_ghost/attack

execute if entity @s[scores={ActionTime=20}] if score #mirrored Selected matches 0 run data modify entity @s HandItems[1].tag.CustomModelData set value 8
execute if entity @s[scores={ActionTime=20}] if score #mirrored Selected matches 1 run data modify entity @s HandItems[0].tag.CustomModelData set value 8
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.garbage_can_ghost.eat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=15}] run playsound luigis_mansion:entity.garbage_can_ghost.eat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=20}] run playsound luigis_mansion:entity.garbage_can_ghost.eat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=25}] run playsound luigis_mansion:entity.garbage_can_ghost.eat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=35}] run playsound luigis_mansion:entity.garbage_can_ghost.drop_bannana hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=35}] run function luigis_mansion:entities/garbage_can_ghost/throw_banana
execute if entity @s[scores={ActionTime=35}] if score #mirrored Selected matches 0 run data modify entity @s HandItems[1].tag.CustomModelData set value 7
execute if entity @s[scores={ActionTime=35}] if score #mirrored Selected matches 1 run data modify entity @s HandItems[0].tag.CustomModelData set value 7
execute if entity @s[scores={ActionTime=35}] run tag @s add threw_banana
tag @s[scores={ActionTime=40}] remove attack
tag @s[scores={ActionTime=40}] add vanish
scoreboard players set @s[scores={ActionTime=40}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0