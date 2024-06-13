data modify storage luigis_mansion:data entity set value {speed:100,damage:{},owner:0}
data modify storage luigis_mansion:data entity.damage.attack set from entity @s data.damage.spike_ball
execute store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[tag=fast_spike_balls] run data modify storage luigis_mansion:data entity.spawn_time set value 120
function luigis_mansion:spawn_entities/ball/spike