$execute if entity @s[nbt={UUID:$(new_attacker)}] run function luigis_mansion:entities/player/memory/refresh_attacker/self with storage luigis_mansion:data
$execute if entity @s[nbt=!{UUID:$(new_attacker)}] run function luigis_mansion:entities/player/memory/refresh_attacker/other with storage luigis_mansion:data
data remove storage luigis_mansion:data new_attacker