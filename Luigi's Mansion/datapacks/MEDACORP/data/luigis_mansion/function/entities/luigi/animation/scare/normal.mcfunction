scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.scare.high_health",medium:"luigis_mansion:entity.player.scare.high_health",low:"luigis_mansion:entity.player.scare.low_health",duration:20}
tag @s add keep_poltergust_grabbed
execute if entity @s[scores={AnimationProgress=20}] run function luigis_mansion:entities/luigi/animation/set/none