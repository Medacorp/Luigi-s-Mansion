Loot is stored in several places, but has a consistent format:

```
{
    works_in_lab:1b, //When set will spawn the loot while in the lab too, and not only outside of it. Default = 0b.
    name:"<name>", //The name of this loot spawn; if loot has spawned before with this name, it will not spawn the loot. No name makes it always spawn.
    contents:[ //The entities to spawn
        { //A single entity
            name:{ //The spawn entity function ID
                namespace:"luigis_mansion", //The spawn entity function's namespace
                id:"item/gold_coin" //The spawn entity function's ID, if there's macros, they are included here
            },
            variables: { //The entity variables to spawn this entity with.
                //See entity variables
            },
            count:X //How many times the entity is spawned, minimum of 1.
        }
    ]
}
```