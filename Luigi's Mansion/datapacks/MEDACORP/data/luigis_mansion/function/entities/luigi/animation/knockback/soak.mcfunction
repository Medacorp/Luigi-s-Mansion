scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.hurt_scare.high_health",medium:"luigis_mansion:entity.player.hurt_scare.high_health",low:"luigis_mansion:entity.player.hurt_scare.low_health",duration:30}
execute if entity @s[scores={AnimationProgress=31}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.hurt_soak.high_health",medium:"luigis_mansion:entity.player.hurt_soak.high_health",low:"luigis_mansion:entity.player.hurt_soak.low_health",duration:20}
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
tag @s add animation_may_move
execute if entity @s[scores={AnimationProgress=40}] run function luigis_mansion:entities/luigi/animation/set/none