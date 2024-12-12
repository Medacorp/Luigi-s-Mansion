scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.yell.high_health",medium:"luigis_mansion:entity.player.yell.medium_health",low:"luigis_mansion:entity.player.yell.low_health",duration:50}
tag @s[scores={Health=..30}] add low_health
tag @s[tag=dark_room] add keep_poltergust_grabbed
tag @s add animation_may_move
execute if entity @s[scores={AnimationProgress=40}] run function luigis_mansion:entities/luigi/animation/set/none