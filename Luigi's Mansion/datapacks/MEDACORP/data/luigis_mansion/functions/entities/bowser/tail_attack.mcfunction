scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
function luigis_mansion:old_animations/bowser/tail_attack
execute if entity @s[scores={ActionTime=11}] run data merge entity @e[tag=this_model,tag=tail,limit=1] {Small:0b}
execute if entity @s[scores={AnimationProgress=11}] run playsound luigis_mansion:entity.bowser.wave_tail hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=31}] run data merge entity @e[tag=this_model,tag=tail,limit=1] {Small:1b}
execute if entity @s[scores={ActionTime=11..30}] positioned ^ ^-3 ^-4 as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={ActionTime=11..30}] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:tail",amount:20,knockback:"large",attacker:-1,no_delete:1b}
execute at @s[scores={ActionTime=11..30}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute at @s[scores={ActionTime=11..30}] positioned ^ ^-3 ^-4 as @a[distance=..1,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={ActionTime=11..30}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=40}] remove tail_attack
tag @s[scores={ActionTime=40}] add turn_around
scoreboard players set @s[scores={ActionTime=40}] AnimationProgress 0
scoreboard players reset @s[scores={ActionTime=40}] ActionTime