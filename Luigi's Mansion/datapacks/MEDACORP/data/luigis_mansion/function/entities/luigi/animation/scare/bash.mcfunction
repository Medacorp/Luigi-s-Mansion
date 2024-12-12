scoreboard players add @s AnimationProgress 1
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ

tag @s[scores={AnimationProgress=1}] add reset_rotation
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.scare_bashed.high_health",medium:"luigis_mansion:entity.player.scare_bashed.high_health",low:"luigis_mansion:entity.player.scare_bashed.low_health",duration:30}
tag @s[scores={AnimationProgress=29..30},tag=!force_moved] remove moved
tag @s[scores={AnimationProgress=29..30}] remove force_moved
tag @s[scores={AnimationProgress=30},tag=!bash_no_move] add moved
execute if entity @s[scores={AnimationProgress=30},tag=moved] run function luigis_mansion:entities/luigi/make_sound/conditional {high:"luigis_mansion:entity.player.scare_bashed.move",medium:"luigis_mansion:entity.player.scare_bashed.move",low:"luigis_mansion:entity.player.scare_bashed.move",duration:4}
tag @s[scores={AnimationProgress=30},tag=!bash_no_move] add animation_may_move
execute if entity @s[scores={AnimationProgress=30,TeleportDelayTimer=0},tag=!bash_no_move] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s positioned as @e[type=minecraft:marker,tag=temp,distance=..0.1,limit=1]",teleport:"^ ^ ^ ~ ~"}
scoreboard players operation @s TeleportDelay = @s TeleportDelaySetting
execute at @s[scores={AnimationProgress=30,TeleportDelayTimer=0},tag=!bash_no_move] run function luigis_mansion:entities/luigi/animation/scare/bash_move
scoreboard players remove @s[scores={MaxHealthTime=1..,AnimationProgress=30}] AnimationProgress 1
kill @e[tag=temp,limit=1]

function luigis_mansion:entities/luigi/animation/shared/prevent_collision {amount:"0.16"}
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
tag @s[scores={AnimationProgress=29}] add disable_second_small_run
tag @s[scores={AnimationProgress=31}] remove reset_rotation
tag @s[scores={AnimationProgress=31}] remove bash_no_move
execute if entity @s[scores={AnimationProgress=31}] run function luigis_mansion:entities/luigi/animation/set/get_up
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"get_up"} run function luigis_mansion:entities/luigi/animation/get_up