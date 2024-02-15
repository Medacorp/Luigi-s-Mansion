data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.chauncey.scan.1"}'}}
execute positioned 741.0 20.0625 -52.0 rotated -180 0 run function luigis_mansion:spawn_entities/portrait_ghost/chauncey
execute positioned 739 23 -50 rotated -70 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
scoreboard players operation @e[x=739.5,y=22.55,z=-49.5,distance=..0.7,limit=1,tag=haunted_teddy_bear] Owner = @e[x=741.0,y=20.0625,z=-52.0,distance=..0.7,limit=1,nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] GhostNr
execute positioned 739 23 -52.0 rotated -90 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
scoreboard players operation @e[x=739.5,y=22.55,z=-52.0,distance=..0.7,limit=1,tag=haunted_teddy_bear] Owner = @e[x=741.0,y=20.0625,z=-52.0,distance=..0.7,limit=1,nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] GhostNr
execute positioned 739 23 -55 rotated -110 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
scoreboard players operation @e[x=739.5,y=22.55,z=-54.5,distance=..0.7,limit=1,tag=haunted_teddy_bear] Owner = @e[x=741.0,y=20.0625,z=-52.0,distance=..0.7,limit=1,nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] GhostNr
scoreboard players set #nursery Wave 1