execute if entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]},tag=same_room] run function luigis_mansion:other/music/set/catching_boo
execute unless entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]},tag=same_room] if entity @s[scores={MusicGroup=0,MusicType=30}] run function luigis_mansion:other/music/set/silence
