scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.search.high_health",medium:"luigis_mansion:entity.player.search.high_health",low:"luigis_mansion:entity.player.search.low_health",duration:15}
tag @s[scores={AnimationProgress=1}] add reset_rotation
tag @s[scores={AnimationProgress=15}] remove reset_rotation
tag @s add keep_poltergust_grabbed
execute if entity @s[scores={AnimationProgress=15}] run function luigis_mansion:entities/luigi/animation/set/none