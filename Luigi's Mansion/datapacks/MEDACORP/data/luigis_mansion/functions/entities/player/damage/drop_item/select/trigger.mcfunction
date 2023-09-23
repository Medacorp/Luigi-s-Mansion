$data modify storage luigis_mansion:data macro set value {namespace:$(namespace),id:$(id),value:$(value),uuid:[I;]}
data modify storage luigis_mansion:data macro.uuid set from entity @s UUID
function luigis_mansion:entities/player/damage/drop_item/select/get with storage luigis_mansion:data macro
execute if score #temp ActionTime matches 1.. run function luigis_mansion:entities/player/damage/drop_item/select/drop
function luigis_mansion:entities/player/damage/drop_item/select/reduce with storage luigis_mansion:data macro