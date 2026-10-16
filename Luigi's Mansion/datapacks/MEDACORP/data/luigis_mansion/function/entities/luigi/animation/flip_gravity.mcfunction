scoreboard players add @s AnimationProgress 1
tag @s add keep_poltergust_grabbed
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.enthusiastic.high_health",medium:"luigis_mansion:entity.player.enthusiastic.high_health",low:"luigis_mansion:entity.player.enthusiastic.low_health",duration:20}
function luigis_mansion:entities/luigi/animation/shared/falling {rotated:"~ ~"}
execute if entity @s[scores={AnimationProgress=20}] run function luigis_mansion:entities/luigi/animation/set/none