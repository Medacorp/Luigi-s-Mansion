advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..1.6] only luigis_mansion:challenges/waluigi_pinball floating_whirlindas
data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:walked_into",amount:0,knockback:"medium",attacker:-1,no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.damage.collision
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute as @a[distance=..1.6,gamemode=!spectator] run function luigis_mansion:entities/player/take_damage
data remove storage luigis_mansion:data damage