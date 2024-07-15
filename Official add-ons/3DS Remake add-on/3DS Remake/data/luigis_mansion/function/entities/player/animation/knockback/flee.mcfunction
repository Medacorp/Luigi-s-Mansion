scoreboard players add @s AnimationProgress 1
summon minecraft:marker ^ ^-1 ^ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s KnockbackX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s KnockbackZ

execute if entity @s[scores={AnimationProgress=1,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.flee.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.flee.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.flee.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.flee.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1,Sound=0},tag=!gooigi] Sound 60
execute at @s[scores={AnimationProgress=1..10},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -90
execute at @s[scores={AnimationProgress=11},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -80
execute at @s[scores={AnimationProgress=12},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -70
execute at @s[scores={AnimationProgress=13},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -60
execute at @s[scores={AnimationProgress=14},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -50
execute at @s[scores={AnimationProgress=15},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -40
execute at @s[scores={AnimationProgress=16},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -30
execute at @s[scores={AnimationProgress=17},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -20
execute at @s[scores={AnimationProgress=18},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -10
execute at @s[scores={AnimationProgress=1..10},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 90
execute at @s[scores={AnimationProgress=11},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 80
execute at @s[scores={AnimationProgress=12},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 70
execute at @s[scores={AnimationProgress=13},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 60
execute at @s[scores={AnimationProgress=14},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 50
execute at @s[scores={AnimationProgress=15},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 40
execute at @s[scores={AnimationProgress=16},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 30
execute at @s[scores={AnimationProgress=17},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 20
execute at @s[scores={AnimationProgress=18},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 10
execute at @s[scores={AnimationProgress=1..18},tag=!look_up] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^0.16 ~ ~
execute at @s[scores={AnimationProgress=19..}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^0.16 ~ ~

execute at @s if block ~ ~2 ~ #luigis_mansion:players_ignore unless block ~ ~1.9 ~ #luigis_mansion:players_ignore if block ~ ~-0.1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~-0.16 ~
execute at @s unless block ~ ~ ~ #luigis_mansion:players_ignore if block ~ ~0.1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~0.16 ~
execute at @s unless block ~0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~-0.16 ~ ~
execute at @s unless block ~-0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~0.16 ~ ~
execute at @s unless block ~ ~ ~0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~-0.16
execute at @s unless block ~ ~ ~-0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~0.16
execute at @s unless block ~0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~-0.16 ~ ~
execute at @s unless block ~-0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~0.16 ~ ~
execute at @s unless block ~ ~1 ~0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~-0.16
execute at @s unless block ~ ~1 ~-0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~0.16
kill @e[type=minecraft:marker,tag=temp,limit=1]
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
tag @s add animation_may_move
tag @s[scores={AnimationProgress=60}] remove look_up
execute if entity @s[scores={AnimationProgress=60}] run function luigis_mansion:entities/player/animation/set/none