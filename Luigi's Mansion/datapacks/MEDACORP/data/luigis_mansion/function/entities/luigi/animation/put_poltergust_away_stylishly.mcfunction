scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.show_item.high_health",medium:"luigis_mansion:entity.player.show_item.high_health",low:"luigis_mansion:entity.player.show_item.low_health",duration:40}
execute if entity @s[scores={AnimationProgress=21}] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"luigis_mansion:entity.player.put_poltergust_away"}
tag @s[scores={AnimationProgress=26..30}] remove new_poltergust_grabbed
tag @s[scores={AnimationProgress=26..30}] remove poltergust_grabbed
execute if entity @s[scores={AnimationProgress=30}] run function luigis_mansion:entities/luigi/animation/set/none