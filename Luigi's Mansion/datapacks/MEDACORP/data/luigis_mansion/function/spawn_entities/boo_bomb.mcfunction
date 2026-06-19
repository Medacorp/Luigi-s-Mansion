execute unless data storage luigis_mansion:data entity.tags run data modify storage luigis_mansion:data entity.tags set value []
data modify storage luigis_mansion:data entity.tags append value "move_up"
data modify storage luigis_mansion:data entity.tags append value "boo"
function luigis_mansion:spawn_entities/bomb
playsound luigis_mansion:entity.boo.trap hostile @a[tag=same_room] ~ ~ ~ 1