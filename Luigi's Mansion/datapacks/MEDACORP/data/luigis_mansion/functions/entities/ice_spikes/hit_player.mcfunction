execute as @e[dx=1,dy=1,dz=1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"freeze"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/freeze"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s ArmorItems[3].tag.luigis_mansion.owner
execute as @a[dx=1,dy=1,dz=1,tag=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage
tag @s add dead
execute if entity @s[scores={ActionTime=1..6}] run function luigis_mansion:entities/ice_spikes/kill_spawner