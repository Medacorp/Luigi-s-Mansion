scoreboard players add @s AnimationProgress 1
tag @s[scores={AnimationProgress=1}] add reset_rotation
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.inspect.high_health",medium:"luigis_mansion:entity.player.inspect.high_health",low:"luigis_mansion:entity.player.inspect.low_health",duration:20}
tag @s[scores={AnimationProgress=2}] remove reset_rotation
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 20