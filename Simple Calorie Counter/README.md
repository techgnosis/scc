A simple calorie counting app that is unburdened by useless features and monetization.


## TODO
* Data persistence
  * switch to sqlite
* The DayDetails is a TabView that is inside another TabView which looks clunky
* Better alignment of data in the FoodRows. They are just comma-separated now and it looks clunky


## sqlite
Food table
ID, Name, Calories, Protein, Serving, Density

Day table
ID, Date, Name, Calories, Protein

Do not do an actual delete when someone deletes a Food from the catalog. Just mark it as deleted and don't show it in the catalog anymore. An actual delete would mess with Days that have already consumed that Food.

