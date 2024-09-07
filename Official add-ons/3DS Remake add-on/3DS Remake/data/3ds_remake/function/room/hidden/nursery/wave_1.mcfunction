data modify storage luigis_mansion:data entity set value {room:10,room_search:{non_players:1b,furniture:1b},scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.chauncey.scan.1"}'}}
execute positioned 741.0 20.0625 68.0 rotated 0 0 run function luigis_mansion:spawn_entities/portrait_ghost/chauncey
data modify storage luigis_mansion:data entity set value {room:10,owner:0}
data modify storage luigis_mansion:data entity.owner set from entity @e[x=741.0,y=20.0625,z=68.0,distance=..0.7,limit=1,nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}] UUID
execute positioned 739 23 65 rotated -110 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
data modify storage luigis_mansion:data entity set value {room:10,owner:0}
data modify storage luigis_mansion:data entity.owner set from entity @e[x=741.0,y=20.0625,z=68.0,distance=..0.7,limit=1,nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}] UUID
execute positioned 739 23 68.0 rotated -90 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
data modify storage luigis_mansion:data entity set value {room:10,owner:0}
data modify storage luigis_mansion:data entity.owner set from entity @e[x=741.0,y=20.0625,z=68.0,distance=..0.7,limit=1,nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}] UUID
execute positioned 739 23 70 rotated -70 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
scoreboard players set #nursery Wave 1