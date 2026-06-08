scoreboard players set @s[tag=was_low_health] ActionTime 0
scoreboard players add @s ActionTime 1
scoreboard players add @s[scores={ActionTime=6..25}] AnimationRotationZ 2
scoreboard players remove @s[scores={ActionTime=36..55}] AnimationRotationZ 2
scoreboard players set @s[scores={ActionTime=60..}] ActionTime 0