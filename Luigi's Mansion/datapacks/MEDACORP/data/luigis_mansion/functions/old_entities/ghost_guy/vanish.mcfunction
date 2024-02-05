scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1},tag=visible] run playsound luigis_mansion:entity.ghost_guy.disappear hostile @a[tag=same_room] ~ ~ ~ 1
teleport @s[scores={ActionTime=1..2}] ~ ~0.4 ~
teleport @s[scores={ActionTime=3..4}] ~ ~-0.4 ~
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=5..}] ~ ~0.3 ~ ~-8 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=5..}] ~ ~0.3 ~ ~8 ~
execute at @s[scores={ActionTime=20}] run teleport @s ~ ~-4.3 ~
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:old_animations/ghost_guy/vanish
data modify entity @s[scores={ActionTime=20},tag=!dancing] ArmorItems[3].tag.CustomModelData set value 5
data modify entity @s[scores={ActionTime=20},tag=dancing] ArmorItems[3].tag.CustomModelData set value 6
tag @s[scores={ActionTime=20}] add disappear
