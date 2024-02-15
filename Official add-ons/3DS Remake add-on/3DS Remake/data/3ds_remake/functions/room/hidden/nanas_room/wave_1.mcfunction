data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.nana.scan"}',plural_message:'{"type":"translatable","translate":"luigis_mansion:message.nana.scan.more"}'}}
execute positioned 657 20 -10.0 rotated -60 0 run function luigis_mansion:spawn_entities/portrait_ghost/nana
data modify storage luigis_mansion:data entity set value {paths:[{loop:1b,steps:[{position:[658.5d,20.0d,-12.5d]},{position:[657.5d,20.0d,-14.5d]},{position:[656.5d,20.0d,-11.5d]},{position:[658.5d,20.0d,-14.5d]},{position:[656.5d,20.0d,-11.5d]},{position:[657.5d,20.0d,-14.5d]}]}]}
execute positioned 659.7 21.5 -11.7 run function luigis_mansion:spawn_entities/ball/wool/pink
data modify storage luigis_mansion:data entity set value {paths:[{loop:1b,steps:[{position:[670.5d,20.0d,-12.5d]},{position:[662.5d,20.0d,-18.5d]},{position:[660.5d,20.0d,-24.5d]},{position:[657.5d,20.0d,-26.5d]},{position:[656.5d,20.0d,-21.5d]},{position:[654.5d,20.0d,-25.5d]},{position:[656.5d,20.0d,-21.5d]},{position:[657.5d,20.0d,-26.5d]},{position:[660.5d,20.0d,-24.5d]},{position:[662.5d,20.0d,-18.5d]}]}]}
execute positioned 659.3 21.5 -11.7 run function luigis_mansion:spawn_entities/ball/wool/blue
data modify storage luigis_mansion:data entity set value {paths:[{loop:1b,steps:[{position:[659.5d,20.0d,-10.5d]},{position:[662.5d,20.0d,-4.5d]}]}]}
execute positioned 659 21.5 -11.3 run function luigis_mansion:spawn_entities/ball/wool/yellow
scoreboard players set #nanas_room Wave 1