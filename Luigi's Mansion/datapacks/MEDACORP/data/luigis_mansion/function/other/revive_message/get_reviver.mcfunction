$tag @e[nbt={UUID:$(revived_by)}] add reviver
data modify storage luigis_mansion:data my_memory.revived_by set value {type:"selector",selector:"@e[tag=reviver,limit=1]"}