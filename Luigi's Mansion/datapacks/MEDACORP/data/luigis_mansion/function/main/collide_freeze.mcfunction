scoreboard players add @s CollisionTimer 1
$execute if entity @s[scores={CollisionTimer=1}] run function $(namespace):entities/$(id)/reset
tag @s[scores={CollisionTimer=1},tag=!no_ai] add collide_no_ai
tag @s[scores={CollisionTimer=1}] add no_ai
tag @s[scores={CollisionTimer=1},tag=!freeze_animation] add collide_freeze_animation
tag @s[scores={CollisionTimer=1}] add freeze_animation
tag @s[scores={CollisionTimer=10},tag=collide_no_ai] remove no_ai
tag @s[scores={CollisionTimer=10}] remove collide_no_ai
tag @s[scores={CollisionTimer=10},tag=collide_freeze_animation] remove freeze_animation
tag @s[scores={CollisionTimer=10}] remove collide_freeze_animation
tag @s[scores={CollisionTimer=10}] remove collided
scoreboard players reset @s[scores={CollisionTimer=10}] CollisionTimer