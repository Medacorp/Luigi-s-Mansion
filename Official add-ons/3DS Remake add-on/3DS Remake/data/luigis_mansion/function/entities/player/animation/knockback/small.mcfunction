scoreboard players add @s AnimationProgress 1
summon minecraft:marker ^ ^-1 ^ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s KnockbackX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s KnockbackZ

execute at @s[scores={AnimationProgress=1,Sound=0,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={AnimationProgress=1,Sound=0,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1,Sound=0},tag=!gooigi] Sound 20
execute at @s[scores={AnimationProgress=..9,TeleportDelayTimer=0}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ ~ run teleport @s ^ ^ ^ ~ ~
execute at @s[scores={AnimationProgress=10,TeleportDelayTimer=0}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~
kill @e[type=minecraft:marker,tag=temp,limit=1]
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add keep_poltergust_grabbed
tag @s add animation_may_move
execute if entity @s[scores={AnimationProgress=10}] run function luigis_mansion:entities/player/animation/set/none