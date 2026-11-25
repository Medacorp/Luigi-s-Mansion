scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=5}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.scare.high_health",medium:"luigis_mansion:entity.player.scare.high_health",low:"luigis_mansion:entity.player.scare.low_health",duration:20}
execute if entity @s[scores={AnimationProgress=15}] run data modify storage luigis_mansion:data damage set value {amount:0}
execute if entity @s[scores={AnimationProgress=15}] store result storage luigis_mansion:data damage.amount int 1 run scoreboard players get @s KnockbackDamage
execute if entity @s[scores={AnimationProgress=15}] if data storage luigis_mansion:data my_memory.hurt_by.attacker[0] run data modify storage luigis_mansion:data damage.attacker set from storage luigis_mansion:data my_memory.hurt_by.attacker[0].id
execute if entity @s[scores={AnimationProgress=15}] run function luigis_mansion:entities/luigi/damage
function luigis_mansion:entities/luigi/animation/shared/freeze_player {rotated:"~ ~"}
execute if entity @s[scores={AnimationProgress=5..24}] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~-9 0",teleport:"^ ^ ^-0.07 ~ ~"}
execute if entity @s[scores={AnimationProgress=25}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.hurt_little",medium:"luigis_mansion:entity.player.hurt_little",low:"luigis_mansion:entity.player.hurt_little",duration:95}
execute if entity @s[scores={AnimationProgress=25..44}] run function luigis_mansion:entities/luigi/make_sound/conditional {high:"luigis_mansion:entity.player.flattened_move",medium:"luigis_mansion:entity.player.flattened_move",low:"luigis_mansion:entity.player.flattened_move",duration:4}
scoreboard players set @s[scores={AnimationProgress=45}] Sound 75
execute if entity @s[scores={AnimationProgress=60}] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"luigis_mansion:entity.player.flattened"}
execute if entity @s[scores={AnimationProgress=61..80}] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0 positioned ^ ^ ^0.05 rotated as @s",teleport:"^ ^ ^ ~ ~4.5"}
execute if entity @s[scores={AnimationProgress=121..130}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^ ^ ~ ~-9"}
execute if entity @s[scores={AnimationProgress=110}] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"luigis_mansion:entity.player.flattened_recover"}
execute if entity @s[scores={AnimationProgress=120}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.sigh.high_health",medium:"luigis_mansion:entity.player.sigh.high_health",low:"luigis_mansion:entity.player.sigh.low_health",duration:20}
tag @s add door_animation
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
tag @s[scores={AnimationProgress=140}] remove door_animation
execute if entity @s[scores={AnimationProgress=140}] run function luigis_mansion:entities/luigi/animation/set/none