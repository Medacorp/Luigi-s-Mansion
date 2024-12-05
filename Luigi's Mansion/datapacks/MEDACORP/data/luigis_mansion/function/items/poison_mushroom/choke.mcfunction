playsound luigis_mansion:item.poison_mushroom.obtain player @a[tag=same_room] ~ ~ ~ 1
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"choke"},amount:5,animation:{namespace:"luigis_mansion",id:"knockback/choke"}}
function luigis_mansion:entities/luigi/damage