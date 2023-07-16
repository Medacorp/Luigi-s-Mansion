execute as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..3] only luigis_mansion:challenges/waluigi_pinball boo
data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:bounced_on",amount:0,knockback:"large",attacker:-1,no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.damage.attack
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute as @a[distance=..3,gamemode=!spectator] run function luigis_mansion:entities/player/take_damage
data remove storage luigis_mansion:data damage