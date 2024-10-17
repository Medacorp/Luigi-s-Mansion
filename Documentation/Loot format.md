Loot is stored in several places, but has a consistent format:

```
{
    works_in_lab:1b, //When set will spawn the loot while in the lab too, and not just outside of it. Default = 0b.
    name:"<name>", //The name of this loot spawn; if loot has spawned before with this name, it will not spawn the loot.
    contents:{
        <namespace>:{ //Only items are accepted IDs.
            <id>:X, //Spawns the item X times, with default variables; if any variable is required, this format is not allowed.
            <id>:"<type>" //Spawns the item with the type variable set to the provided value. Only works for item types which have a type variant listed below.
            <id>:[
                {
                    //See entity documentation for other variables
                }
            ]
        }
    }
}
```
Some item types have additional options when in the list format, they are as listed below.

`luigis_mansion:element_medal`:
```
{
    variant:"<type>" //REQUIRED; Sets which element medal this is. Must be "fire", "water" or "ice". If the element medal of this type has already been obtained, or exists in the world, it will not spawn.
}
```
`luigis_mansion:mario_item`:
```
{
    variant:"<type>" //REQUIRED; Sets which item this is. Must be "hat", "letter", "star", "glove" or "shoe". If the item of this type has already been obtained, or exists in the world, it will not spawn.
}
```
`luigis_mansion:key`, `luigis_mansion:heart_key`, `luigis_mansion:club_key`, `luigis_mansion:diamond_key`, and `luigis_mansion:spade_key`:
```
{
    door:"<name>" //REQUIRED; Sets which door this key belongs to. If the key for this door has already been obtained, or exists in the world, it will not spawn.
}
```

`3ds_remake:gameboy_horror_part`: If the item of this type has already been obtained, or exists in the world, it will not spawn. Will only ever attempt to spawn one, even with the count format.