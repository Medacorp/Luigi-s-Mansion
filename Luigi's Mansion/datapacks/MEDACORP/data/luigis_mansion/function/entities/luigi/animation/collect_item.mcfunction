scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=10}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.show_item.high_health",medium:"luigis_mansion:entity.player.show_item.high_health",low:"luigis_mansion:entity.player.show_item.low_health",duration:60}
scoreboard players set @s[scores={AnimationProgress=1}] Sound 10
execute if entity @s[scores={AnimationProgress=70}] run function luigis_mansion:entities/luigi/animation/set/none