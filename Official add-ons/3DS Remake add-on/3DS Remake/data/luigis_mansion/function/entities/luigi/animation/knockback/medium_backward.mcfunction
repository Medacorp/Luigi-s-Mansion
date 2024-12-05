scoreboard players add @s AnimationProgress 1
function luigis_mansion:entities/luigi/animation/shared/freeze_player {rotated:"~ ~"}
summon minecraft:marker ^ ^-1 ^ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s KnockbackX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s KnockbackZ

execute if entity @s[scores={AnimationProgress=1,Sound=0,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Sound=0,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1,Sound=0},tag=!gooigi] Sound 20
execute if entity @s[scores={AnimationProgress=2},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-5"}
execute if entity @s[scores={AnimationProgress=3},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-10"}
execute if entity @s[scores={AnimationProgress=4},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-15"}
execute if entity @s[scores={AnimationProgress=5},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-20"}
execute if entity @s[scores={AnimationProgress=6},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-25"}
execute if entity @s[scores={AnimationProgress=7},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-30"}
execute if entity @s[scores={AnimationProgress=8},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-35"}
execute if entity @s[scores={AnimationProgress=9},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-40"}
execute if entity @s[scores={AnimationProgress=10},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-45"}
execute if entity @s[scores={AnimationProgress=11},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-40"}
execute if entity @s[scores={AnimationProgress=12},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-35"}
execute if entity @s[scores={AnimationProgress=13},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-30"}
execute if entity @s[scores={AnimationProgress=14},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-25"}
execute if entity @s[scores={AnimationProgress=15},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-20"}
execute if entity @s[scores={AnimationProgress=16},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-15"}
execute if entity @s[scores={AnimationProgress=17},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-10"}
execute if entity @s[scores={AnimationProgress=18},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~-5"}
execute if entity @s[scores={AnimationProgress=2},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~5"}
execute if entity @s[scores={AnimationProgress=3},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~10"}
execute if entity @s[scores={AnimationProgress=4},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~15"}
execute if entity @s[scores={AnimationProgress=5},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~20"}
execute if entity @s[scores={AnimationProgress=6},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~25"}
execute if entity @s[scores={AnimationProgress=7},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~30"}
execute if entity @s[scores={AnimationProgress=8},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~35"}
execute if entity @s[scores={AnimationProgress=9},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~40"}
execute if entity @s[scores={AnimationProgress=10},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~45"}
execute if entity @s[scores={AnimationProgress=11},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~40"}
execute if entity @s[scores={AnimationProgress=12},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~35"}
execute if entity @s[scores={AnimationProgress=13},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~30"}
execute if entity @s[scores={AnimationProgress=14},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~25"}
execute if entity @s[scores={AnimationProgress=15},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~20"}
execute if entity @s[scores={AnimationProgress=16},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~15"}
execute if entity @s[scores={AnimationProgress=17},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~10"}
execute if entity @s[scores={AnimationProgress=18},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0",teleport:"^ ^ ^ ~ ~5"}
function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^-0.05"}

function luigis_mansion:entities/luigi/animation/shared/prevent_collision {amount:"0.16"}
kill @e[type=minecraft:marker,tag=temp,limit=1]
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
tag @s add keep_poltergust_grabbed
execute if entity @s[scores={AnimationProgress=20}] run function luigis_mansion:entities/luigi/animation/set/none