execute if entity @s[tag=normal_death] run playsound luigis_mansion:entity.speedy_spirit.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=element_death] run playsound luigis_mansion:entity.speedy_spirit.element_death hostile @a[tag=same_room] ~ ~ ~ 1
function #luigis_mansion:entities/speedy_spirit/spawn_money
loot spawn ~ ~ ~ loot luigis_mansion:entities/ghost/speedy_spirit