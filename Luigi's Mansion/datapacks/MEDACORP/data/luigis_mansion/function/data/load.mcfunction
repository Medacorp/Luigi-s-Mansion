function #luigis_mansion:load_data
tag @s add has_luigi
execute if entity @s run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"selector",selector:"@s",color:"green"},{type:"translatable",translate:"luigis_mansion:message.save.load"}]}