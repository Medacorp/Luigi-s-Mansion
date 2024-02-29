advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..1.6] only luigis_mansion:vanilla/waluigi_pinball/nana
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"walked_into"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/medium"},attacker:-1,no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.collision
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute as @a[distance=..1.6,gamemode=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage