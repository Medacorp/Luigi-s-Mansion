scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
function luigis_mansion:animations/bowser/tail_attack
execute if entity @s[scores={ActionTime=11}] run data merge entity @e[tag=this_model,tag=tail,limit=1] {Small:0b}
execute if entity @s[scores={AnimationProg=11}] run playsound luigis_mansion:entity.bowser.wave_tail hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=31}] run data merge entity @e[tag=this_model,tag=tail,limit=1] {Small:1b}
execute if entity @s[scores={ActionTime=11..30}] positioned ^ ^-3 ^-4 as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[scores={ActionTime=11..30}] positioned ^ ^-3 ^-4 run effect give @a[tag=!spectator,distance=..3] minecraft:instant_damage 1 0 true
execute if entity @s[scores={ActionTime=11..30}] positioned ^ ^-3 ^-4 run scoreboard players set @a[tag=!spectator,distance=..3] ForcedDamage 14
execute at @s[scores={ActionTime=11..30}] positioned ^ ^-3 ^-4 as @a[distance=..1,tag=!spectator] run function luigis_mansion:entities/player/knockback/large
tag @s[scores={ActionTime=40}] remove tail_attack
tag @s[scores={ActionTime=40}] add turn_around
scoreboard players set @s[scores={ActionTime=40}] AnimationProg 0
scoreboard players reset @s[scores={ActionTime=40}] ActionTime