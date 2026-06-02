scoreboard players add @s AnimationProgress 1
function luigis_mansion:entities/luigi/animation/shared/freeze_player {rotated:"~ ~"}
summon minecraft:marker ^ ^-1 ^ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s KnockbackX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s KnockbackZ

execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.hurt_flip",medium:"luigis_mansion:entity.player.hurt_flip",low:"luigis_mansion:entity.player.hurt_flip",duration:20}
execute if entity @s[scores={AnimationProgress=21}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.hurt_flip.front",medium:"luigis_mansion:entity.player.hurt_flip.front",low:"luigis_mansion:entity.player.hurt_flip.front",duration:20}
execute if entity @s[scores={AnimationProgress=..35}] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0",teleport:"^ ^ ^0.16 ~ ~"}
tag @s[scores={AnimationProgress=30}] add poltergust_floor_sound
tag @s[scores={AnimationProgress=35}] add poltergust_floor_sound

function luigis_mansion:entities/luigi/animation/shared/prevent_collision_alt {amount:"0.16"}
kill @e[type=minecraft:marker,tag=temp,limit=1]
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
execute if entity @s[tag=hit_wall_front] run function luigis_mansion:entities/luigi/animation/set/knockback/large_forward_wall
execute if entity @s[scores={AnimationProgress=51}] run function luigis_mansion:entities/luigi/animation/set/get_up
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"get_up"} run function luigis_mansion:entities/luigi/animation/get_up