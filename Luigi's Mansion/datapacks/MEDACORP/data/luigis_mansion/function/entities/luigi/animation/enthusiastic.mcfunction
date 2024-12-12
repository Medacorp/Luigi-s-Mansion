scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.enthusiastic.high_health",medium:"luigis_mansion:entity.player.enthusiastic.high_health",low:"luigis_mansion:entity.player.enthusiastic.low_health",duration:20}
execute if entity @s[scores={AnimationProgress=5,InteractionTime=1..}] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"luigis_mansion:entity.player.exploding_poltergust.punch"}
tag @s[tag=dark_room] add keep_poltergust_grabbed
execute if entity @s[scores={AnimationProgress=15}] run function luigis_mansion:entities/luigi/animation/set/none