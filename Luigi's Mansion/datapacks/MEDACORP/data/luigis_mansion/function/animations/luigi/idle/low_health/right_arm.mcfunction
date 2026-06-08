scoreboard players set @s[tag=!was_low_health] ActionTime 0
scoreboard players add @s ActionTime 1
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={ActionTime=1}] AnimationRotationZ 400
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={ActionTime=1},tag=flipped_gravity] AnimationRotationZ -1400
scoreboard players add @s[scores={ActionTime=6..25}] AnimationRotationZ 2
scoreboard players remove @s[scores={ActionTime=36..55}] AnimationRotationZ 2
scoreboard players set @s[scores={ActionTime=60..}] ActionTime 0