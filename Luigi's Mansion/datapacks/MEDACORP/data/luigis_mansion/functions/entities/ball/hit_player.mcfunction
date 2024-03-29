execute as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"ball"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
data modify storage luigis_mansion:data damage.attacker set from entity @s ArmorItems[3].tag.luigis_mansion.owner
execute as @a[distance=..1,tag=!spectator,scores={Invulnerable=0}] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage
execute if data entity @s ArmorItems[3].tag.luigis_mansion.owner run function luigis_mansion:entities/ghost/owner_laugh with entity @s ArmorItems[3].tag.luigis_mansion