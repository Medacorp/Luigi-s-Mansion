scoreboard players set @s[tag=!was_low_health] ActionTime 0
scoreboard players add @s ActionTime 1
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={ActionTime=1}] AnimationRotationZ 400
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={ActionTime=1},tag=flipped_gravity] AnimationRotationZ -1400
execute if entity @s[scores={ActionTime=6..25}] run scoreboard players remove @s AnimationRotationZ 2
execute if entity @s[scores={ActionTime=36..55}] run scoreboard players add @s AnimationRotationZ 2
scoreboard players set @s[scores={ActionTime=60..}] ActionTime 0