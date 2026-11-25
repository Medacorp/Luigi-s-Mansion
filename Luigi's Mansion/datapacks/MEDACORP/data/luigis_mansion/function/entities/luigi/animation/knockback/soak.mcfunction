scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.hurt_scare.high_health",medium:"luigis_mansion:entity.player.hurt_scare.high_health",low:"luigis_mansion:entity.player.hurt_scare.low_health",duration:30}
execute if entity @s[scores={AnimationProgress=2}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=4}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=6}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=8}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=10}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=12}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=14}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=16}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=18}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=20}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=22}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=24}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=26}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=28}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=30}] run playsound luigis_mansion:furniture.water.land player @a[tag=same_room] ~ ~ ~ 1
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