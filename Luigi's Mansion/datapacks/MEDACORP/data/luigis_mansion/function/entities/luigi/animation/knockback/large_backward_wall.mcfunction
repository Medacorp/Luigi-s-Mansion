scoreboard players add @s AnimationProgress 1
function luigis_mansion:entities/luigi/animation/shared/freeze_player {rotated:"~ ~"}

tag @s[scores={AnimationProgress=1}] add poltergust_wall_sound
execute if entity @s[scores={AnimationProgress=5}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.hurt_flip.back",medium:"luigis_mansion:entity.player.hurt_flip.back",low:"luigis_mansion:entity.player.hurt_flip.back",duration:20}
tag @s[scores={AnimationProgress=6}] add poltergust_floor_sound
tag @s[scores={AnimationProgress=11}] add poltergust_floor_sound

tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
execute if entity @s[scores={AnimationProgress=21}] run function luigis_mansion:entities/luigi/animation/set/get_up
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"get_up"} run function luigis_mansion:entities/luigi/animation/get_up