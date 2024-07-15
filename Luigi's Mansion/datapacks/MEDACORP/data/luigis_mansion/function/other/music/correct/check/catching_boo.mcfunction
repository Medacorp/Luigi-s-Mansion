execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boo"}}},tag=same_room,tag=!no_music] run function luigis_mansion:other/music/set/catching_boo
execute unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boo"}}},tag=same_room,tag=!no_music] if entity @s[scores={MusicGroup=0,MusicType=30}] run function luigis_mansion:other/music/set/silence
