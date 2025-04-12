scoreboard players add @s AnimationProgress 1
tag @s[scores={AnimationProgress=1}] add reset_rotation
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.scare_causion",medium:"luigis_mansion:entity.player.scare_causion",low:"luigis_mansion:entity.player.scare_causion",duration:104}
#execute if entity @s[scores={AnimationProgress=1..70}] rotated ~ 0 run function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^ ^0.0125"}
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
tag @s[scores={AnimationProgress=80}] remove reset_rotation
execute if entity @s[scores={AnimationProgress=90}] run function luigis_mansion:entities/luigi/animation/set/none