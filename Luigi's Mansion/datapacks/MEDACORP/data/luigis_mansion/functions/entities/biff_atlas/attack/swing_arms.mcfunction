#scoreboard players set @s TargetTask 0 //This attack supports moving around
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"swing_arms"}
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.biff_atlas.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=5}] run playsound luigis_mansion:entity.biff_atlas.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute as @e[distance=..1.6,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @a[distance=..1.6,scores={Invulnerable=0},tag=!spectator] run tag @s add laugh
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"punch"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},attacker:-1,no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute as @a[distance=..1.6,gamemode=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage
tag @s[tag=laugh] remove attack
tag @s[scores={ActionTime=10}] remove attack
scoreboard players set @s[tag=!attack] ActionTime 0