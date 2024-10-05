data modify storage luigis_mansion:data entity set value {room:10,room_search:{non_players:1b,furniture:1b},scan_result:{namespace:"luigis_mansion",id:"scan/entity/chauncey"}}
execute positioned 741.0 20.0625 -52.0 rotated -180 0 run function luigis_mansion:spawn_entities/portrait_ghost/chauncey
data modify storage luigis_mansion:data entity set value {room:10,owner:0}
data modify storage luigis_mansion:data entity.owner set from entity @e[x=741.0,y=20.0625,z=-52.0,distance=..0.7,limit=1,nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}] UUID
execute positioned 739 23 -50 rotated -70 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
data modify storage luigis_mansion:data entity set value {room:10,owner:0}
data modify storage luigis_mansion:data entity.owner set from entity @e[x=741.0,y=20.0625,z=-52.0,distance=..0.7,limit=1,nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}] UUID
execute positioned 739 23 -52.0 rotated -90 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
data modify storage luigis_mansion:data entity set value {room:10,owner:0}
data modify storage luigis_mansion:data entity.owner set from entity @e[x=741.0,y=20.0625,z=-52.0,distance=..0.7,limit=1,nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}] UUID
execute positioned 739 23 -55 rotated -110 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
scoreboard players set #nursery Wave 1