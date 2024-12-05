$data modify storage luigis_mansion:data macro set value {namespace:"$(namespace)",id:"$(id)",value:0,uuid:[I;]}
data modify storage luigis_mansion:data macro.uuid set from entity @s UUID
$execute store result storage luigis_mansion:data macro.value int 1 run function $(namespace):items/money/get_value/$(id)
function luigis_mansion:entities/luigi/damage/drop_item/get with storage luigis_mansion:data macro
execute if score #temp ActionTime matches 1.. run function luigis_mansion:entities/luigi/damage/drop_item/drop
function luigis_mansion:entities/luigi/damage/drop_item/reduce with storage luigis_mansion:data macro