scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.show_item.high_health",medium:"luigis_mansion:entity.player.show_item.high_health",low:"luigis_mansion:entity.player.show_item.low_health",duration:80}
execute if entity @s[scores={AnimationProgress=5}] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"luigis_mansion:entity.player.jump"}
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 60