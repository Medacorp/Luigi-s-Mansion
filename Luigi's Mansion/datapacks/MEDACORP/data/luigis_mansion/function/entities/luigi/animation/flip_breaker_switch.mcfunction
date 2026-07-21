scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] Sound 20
execute if entity @s[scores={AnimationProgress=20}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.search.high_health",medium:"luigis_mansion:entity.player.search.high_health",low:"luigis_mansion:entity.player.search.low_health",duration:40}
tag @s[scores={AnimationProgress=1}] add reset_rotation
tag @s[scores={AnimationProgress=60}] remove reset_rotation
execute if entity @s[scores={AnimationProgress=60}] run function luigis_mansion:entities/luigi/animation/set/none