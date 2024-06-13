scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=1},tag=!freeze_animation] add collide_freeze_animation
tag @s[scores={ActionTime=1}] add freeze_animation
tag @s[scores={ActionTime=10},tag=collide_freeze_animation] remove freeze_animation
tag @s[scores={ActionTime=10}] remove collide_freeze_animation
tag @s[scores={ActionTime=10}] remove collided
scoreboard players reset @s[scores={ActionTime=10}] ActionTime