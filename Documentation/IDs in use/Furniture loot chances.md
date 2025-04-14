The health threshold is halved for Gooigi and if no searcher is found the first ID is used.

```
ID                                | Defined | Small Heart  | Big Heart | Poison Mushroom | Health Threshold | IDs Used
INVALID OR NOT SET                | 100%    |              |           |                 |                  |
luigis_mansion:d25_m20_p5         | 25%     | 20% (moving) |           | 5%              |                  |
luigis_mansion:d50_m10_p5         | 50%     | 10% (moving) |           | 5%              |                  |
luigis_mansion:d50_m10_p10        | 50%     | 10% (moving) |           | 10%             |                  |
luigis_mansion:h10_p10            |         | 10%          |           | 10%             |                  |
luigis_mansion:h10_p20            |         | 10%          |           | 20%             |                  |
luigis_mansion:h15                |         | 15%          |           |                 |                  |
luigis_mansion:h30_p15            |         | 30%          |           | 15%             |                  |
luigis_mansion:h50                |         | 50%          |           |                 |                  |
luigis_mansion:h70_b10            |         | 70%          | 10%       |                 |                  |
luigis_mansion:health_dependent_1 |         |              |           |                 | 31.. / ..30      | luigis_mansion:d50_m10_p5 / luigis_mansion:m80.
luigis_mansion:health_dependent_2 |         |              |           |                 | 31.. / ..30      | luigis_mansion:h15 / luigis_mansion:h50.
luigis_mansion:health_dependent_3 |         |              |           |                 | 31.. / ..30      | luigis_mansion:d50_m10_p10 / luigis_mansion:d25_m20_p5.
luigis_mansion:health_dependent_4 |         |              |           |                 | 31.. / ..30      | luigis_mansion:h10_p10 / luigis_mansion:h30_p15.
luigis_mansion:m15                |         | 15% (moving) |           |                 |                  |
luigis_mansion:m20_p15            |         | 20% (moving) |           | 15%             |                  |
luigis_mansion:m30                |         | 30% (moving) |           |                 |                  |
luigis_mansion:m50                |         | 50% (moving) |           |                 |                  |
luigis_mansion:m60                |         | 60% (moving) |           |                 |                  |
luigis_mansion:m80                |         | 80% (moving) |           |                 |                  |
3ds_remake:d50_p15                | 50%     |              |           | 15%             |                  |
3ds_remake:health_dependent_1     |         |              |           |                 | 31.. / ..30      | 3ds_remake:d50_p15 / 3ds_remake:p80.
3ds_remake:health_dependent_2     |         |              |           |                 | 31.. / ..30      | 3ds_remake:p15 / 3ds_remake:p50.
3ds_remake:p15                    |         |              |           | 15%             |                  |
3ds_remake:p50                    |         |              |           | 50%             |                  |
3ds_remake:p80                    |         |              |           | 80%             |                  |
```