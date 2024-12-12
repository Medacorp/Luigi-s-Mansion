$execute if data entity @s data{attacked_by:[$(id)]} run tag @s add already_included

execute if entity @s[tag=!already_included] unless data entity @s data.attacked_by run data modify entity @s data.attacked_by set value []
$execute if entity @s[tag=!already_included] run data modify entity @s data.attacked_by append value $(id)

$execute if entity @s[tag=!already_included,tag=!vacuumable] as @e[tag=luigi,scores={ID=$(id)},limit=1] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.latch_onto_ghost.high_health",medium:"luigis_mansion:entity.player.latch_onto_ghost.high_health",low:"luigis_mansion:entity.player.latch_onto_ghost.low_health",duration:20}

tag @s remove already_included