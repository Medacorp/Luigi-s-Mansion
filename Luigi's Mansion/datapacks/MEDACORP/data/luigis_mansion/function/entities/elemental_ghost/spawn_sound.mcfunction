execute if entity @s[tag=fire] run playsound luigis_mansion:entity.fire_elemental_ghost.spawn hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=water] run playsound luigis_mansion:entity.water_elemental_ghost.spawn hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=ice] run playsound luigis_mansion:entity.ice_elemental_ghost.spawn hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"spawn"}