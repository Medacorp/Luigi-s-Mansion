scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.revive.high_health",medium:"luigis_mansion:entity.player.revive.high_health",low:"luigis_mansion:entity.player.revive.low_health",duration:40}
tag @s add keep_poltergust_grabbed
execute if entity @s[scores={AnimationProgress=40}] run function luigis_mansion:entities/luigi/animation/set/none