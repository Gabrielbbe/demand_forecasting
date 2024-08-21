LOAD DATA LOCAL INFILE 'C:\\Users\\Gabri\\Desktop\\PROJETOS\\demand_forescating\\dados\\menuitem.csv'
INTO TABLE menuitem
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(`MD5KEY_MENUITEM`, `MD5KEY_ORDERSALE`, `CategoryDescription`,
       `DepartmentDescription`, `Description`, `StoreNumber`,
       `TaxInclusiveAmount`, `TaxAmount`, `AdjustedPrice`, `DiscountAmount`,
       `Price`, `Quantity`, `PLU`, `Id`, `date`);

select * from pos_ordersale;

LOAD DATA LOCAL INFILE 'C:\\Users\\Gabri\\Desktop\\PROJETOS\\demand_forescating\\dados\\pos_ordersale.csv'
INTO TABLE pos_ordersale
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(`MD5KEY_ORDERSALE`,
`ChangeReceived`,
`OrderNumber`,
`TaxInclusiveAmount`,
`TaxAmount`,
`MealLocation`,
`TransactionId`,
`StoreNumber`,
`date`);

select * from sub_recipes;

LOAD DATA LOCAL INFILE 'C:\\Users\\Gabri\\Desktop\\PROJETOS\\demand_forescating\\dados\\recipes.csv'
INTO TABLE recipes
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
 (`RecipeName`,`RecipeDescription`,`RecipeId` );
 
LOAD DATA LOCAL INFILE 'C:\\Users\\Gabri\\Desktop\\PROJETOS\\demand_forescating\\dados\\sub_recipes.csv'
INTO TABLE sub_recipes
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(`SubRecipeName`,
`SubRecipeDescription`,
`SubRecipeId`);

select * from sub_recipes;

LOAD DATA LOCAL INFILE 'C:/Users/Gabri/Desktop/PROJETOS/demand_forescating/dados/sub_recipes.csv'
INTO TABLE sub_recipes
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(SubRecipeName, SubRecipeDescription, SubRecipeId);

select * from sub_recipes;


 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Footlong Sub bread                           ','Std Footlong Sub Bread                           ', 1);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std 6 Inch Sub bread                             ','Std 6 Inch Sub Bread                             ', 2);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Footlong Flatbread Bread                     ','Std Footlong Flatbread Bread                     ', 3);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std 6 Inch Flatbread bread                       ','Std 6 Inch Flatbread bread                       ', 4);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Salad Lettuce, bowl, & dressing              ','Std Salad Lettuce, Bowl & Dressing               ', 5);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Footlong Vegetables DELETE                   ','Std Footlong Vegetables DELETE                   ', 6);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std 6 Inch Vegetables                            ','Std 6 Inch Vegetables                            ', 7);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Sliced Cheese DELETE                         ','Std Sliced Cheese DELETE                         ', 8);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Sliced Cheese                                    ','Sliced Cheese                                    ', 9);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Vegetables                                       ','Vegetables                                       ', 10);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std 6 -Inch Sub bread                            ','Std 6 -Inch Sub Bread                            ', 11);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Sauces                                           ','Sauces, core sauces                              ', 12);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Mini Sub bread                               ','Std Mini Sub bread                               ', 13);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std English Muffin bread                         ','Std English Muffin Bread                         ', 14);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Footlong bread & egg               ','Std Breakfast FL Bread & Egg                     ', 15);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast 6 inch Bread & Egg                 ','Std Breakfast 6 inch Bread & Egg                 ', 16);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Flatbread FL & Egg                 ','Std Breakfast Flatbread FL & Egg                 ', 17);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Flatbread 6 inch & Egg             ','Std Breakfast 6 Inch Flatbread & Egg             ', 18);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Flatbread 3 Inch & Egg             ','Std Breakfast 3 inch Flatbread & Egg             ', 19);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Biscuit bread                      ','Std Breakfast Biscuit & egg                      ', 20);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Croissant Bread                    ','Std Breakfast Croissant & Egg                    ', 21);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Subway To Go!  pkg, chips & cookie           ','Std Subway to Go! Pkg, chips & cookie            ', 22);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std English muffin Liquid egg                    ','Std English muffin with liquid egg omelet program', 23);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std breakfast footlong liquid egg                ','Std breakfast footlong liquid egg omelet         ', 24);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast 6 inch liquid egg                  ','Std Breakfast 6 inch liquid egg omelet           ', 25);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast FL Flatbread Liquid egg            ','Std Bkfst FL Flatbread Liquid Egg Omelet         ', 26);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast 6 inch Flatbread Liquid Egg        ','Std Bkfst 6 inch Flatbread Liquid Egg Omelet     ', 27);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast 3 inch Flatbread Liquid Egg        ','Std Bkfst 3 inch Flatbread Liquid Egg Omelet     ', 28);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Biscuit Liquid Egg                 ','Std Bkfst Biscuit Liquid Egg Omelet              ', 29);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Bagel Liquid Egg                   ','Std Bkfst Bagel Liquid Egg Omelet                ', 30);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Bagel & Egg                        ','Std Breakfast Bagel & Egg                        ', 31);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('std Breakfast Croissant Liquid Egg               ','Std Breakfast Croissant Liquid Egg Omelet        ', 32);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Mini Sub with Egg                  ','Std Breakfast Mini Sub with Egg                  ', 33);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Mini Sub Liquid Egg                ','Std Breakfast Mini Sub Liquid Egg                ', 34);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Sliced Cheese - Metric                           ','Sliced Cheese - Metric                           ', 35);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Sauces Canada                                    ','Sauces Canada                                    ', 36);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Wrap Bread                                   ','Std Wrap Bread                                   ', 37);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Wrap Bread                         ','Std Breakfast Wrap Bread                         ', 38);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std 3 inch Flatbread                             ','Std 3 inch Flatbread                             ', 39);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Flatizza Flatbread & Packaging                   ','Flatizza Flatbread & packaging items             ', 40);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Salad Lettuce & Bowl - Metric                ','Std Salad Lettuce & Bowl - Metric                ', 41);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Vegetables - Metric,                             ','Vegetables - Metric                              ', 42);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Vegetables, with Carrot - Metric                 ','Vegetables, with Carrot - Metric                 ', 43);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Wrap 6inch Bread                             ','Std Wrap 6inch Bread                             ', 44);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Subway To Go! Footlong                       ','Std Subway To Go! Footlong                       ', 45);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('6 inch Flatbread with Pouch                      ','6 inch Flatbread with pouch                      ', 46);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Subway To Go! Pkg,  & 2 Cookies              ','Std Subway To Go! Pkg,  & 2 Cookies              ', 47);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Subway To Go! Footlong with 2 cookies        ','Std Subway To Go! Footlong with 2 cookies        ', 48);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Vegetables Canada                                ','Vegetables Canada                                ', 49);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Vegetables Canada Deli Snack                     ','Vegetables Canada Deli Snack                     ', 50);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Vegetables - Carribean                           ','Vegetables - Carribean                           ', 51);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Deli Roll & Egg                    ','Std Breakfast Deli Roll & Egg                    ', 52);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Vegetables - Singapore Metric                    ','Vegetables - Singapore Metric                    ', 53);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Deli Roll - Soup                                 ','Deli Roll - Soup                                 ', 54);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Footlong Sub Bread - Bahamas                 ','Std Footlong Sub Bread - Bahamas                 ', 55);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Footlong Flatbread Bread-Bahamas             ','Std Footlong Flatbread Bread-Bahamas             ', 56);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std 6 Inch Flatbread bread-Bahamas               ','Std 6 Inch Flatbread bread-Bahamas               ', 57);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Salad lettuce, bowl, & dressing-Bahamas      ','Std Salad lettuce, bowl, & dressing-Bahamas      ', 58);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Sliced Cheese-Bahamas                            ','Sliced Cheese-Bahamas                            ', 59);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std 6-Inch Sub bread-Bahamas                     ','Std 6-Inch Sub bread-Bahamas                     ', 60);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Mini Sub bread-Bahamas                       ','Std Mini Sub bread-Bahamas                       ', 61);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std English Muffin bread-Bahamas                 ','Std English Muffin bread-Bahamas                 ', 62);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Footlong bread & egg-Bahamas       ','Std Breakfast Footlong bread & egg-Bahamas       ', 63);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast 6 inch Bread & Egg-Bahamas         ','Std Breakfast 6 inch Bread & Egg-Bahamas         ', 64);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Flatbread FL & Egg-Bahamas         ','Std Breakfast Flatbread FL & Egg-Bahamas         ', 65);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Flatbread 6 inch & Egg-Bahamas     ','Std Breakfast Flatbread 6 inch & Egg-Bahamas     ', 66);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast 3 inch Flatbread & Egg-Bahamas     ','Std Breakfast 3 inch Flatbread & Egg-Bahamas     ', 67);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Subway To Go!  pkg, chips & cookie-Bahamas   ','Std Subway To Go!  pkg, chips & cookie-Bahamas   ', 68);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Flatizza Flatbread & Packaging-Bahamas           ','Flatizza Flatbread & Packaging-Bahamas           ', 69);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Subway To Go! Footlong-Bahamas               ','Std Subway To Go! Footlong-Bahamas               ', 70);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Smoothie 20 oz., Nontrad                         ','Nontrad, 20 oz Smoothies                         ', 71);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Smoothie 32 oz., Nontrad                         ','Nontrad, 32 oz Smoothie                          ', 72);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Vegetables School Lunch                          ','Vegetables School Lunch                          ', 73);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Footlong Sub bread  -Asia                    ','Std Footlong Sub bread  -Asia                    ', 74);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Footlong Flatbread - Asia                    ','Std Footlong Flatbread - Asia                    ', 76);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Footlong bread & egg - Asia        ','Std Breakfast Footlong bread & egg - Asia        ', 78);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Flatbread FL & Egg - Asia          ','Std Breakfast Flatbread FL & Egg - Asia          ', 80);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Subway To Go! pkg with chips OR cookie       ','Std Subway To Go! pkg with chips OR cookie       ', 82);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast 6 in Bread & Egg Mayo Asia         ','Std Breakfast 6 in Bread & Egg Mayo Asia         ', 84);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Footlong Bread with Egg Mayo - Asia','Std Breakfast Footlong Bread with Egg Mayo - Asia', 86);
 INSERT INTO sub_recipes (SubRecipeName, SubRecipeDescription, SubRecipeId) VALUES ('Std Breakfast Wrap Bread plus egg mayo           ','Std Breakfast Wrap Bread plus egg mayo           ', 87);
 