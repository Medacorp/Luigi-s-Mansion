scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.enthusiastic.high_health",medium:"luigis_mansion:entity.player.enthusiastic.high_health",low:"luigis_mansion:entity.player.enthusiastic.low_health",duration:20}
execute if entity @s[scores={TeleportDelayTimer=0}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~ ~ ~"}
execute if entity @s[scores={AnimationProgress=20}] run function luigis_mansion:entities/luigi/animation/set/none