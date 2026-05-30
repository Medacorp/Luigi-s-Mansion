scoreboard players add @s AnimationProgress 1
tag @s[scores={AnimationProgress=1}] add reset_rotation
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"luigis_mansion:entity.player.wind_warp"}
scoreboard players set @s Sound 1
scoreboard players set @s Invulnerable 1
tag @s[scores={AnimationProgress=2}] remove reset_rotation
scoreboard players set @s[scores={AnimationProgress=20..},tag=wind_warped] Invulnerable 0
execute at @s[scores={AnimationProgress=20..},tag=wind_warped] positioned ^ ^ ^1 run function luigis_mansion:entities/luigi/animation/set/knockback/large
tag @s remove wind_warped
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/large_backward"} run function luigis_mansion:entities/luigi/animation/knockback/large_backward