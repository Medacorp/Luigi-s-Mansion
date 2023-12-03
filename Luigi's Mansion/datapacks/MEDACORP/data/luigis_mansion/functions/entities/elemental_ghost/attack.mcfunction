execute as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[tag=fire] run advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..1] only luigis_mansion:vanilla/waluigi_pinball/fire_elemental_ghost
execute at @s[tag=water] run advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..1] only luigis_mansion:vanilla/waluigi_pinball/water_elemental_ghost
execute at @s[tag=ice] run advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..1] only luigis_mansion:vanilla/waluigi_pinball/ice_elemental_ghost
execute if entity @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run tag @s add dead
execute at @s[tag=fire] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:fire",amount:0,knockback:"burn",attacker:-1,no_delete:1b}
execute at @s[tag=water] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:water",amount:0,knockback:"soak",attacker:-1,no_delete:1b}
execute at @s[tag=ice] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:ice",amount:0,knockback:"freeze",attacker:-1,no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute as @a[distance=..1,gamemode=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage