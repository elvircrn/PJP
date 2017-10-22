fun NinetyNineBottlesOfBeer(0) =
  print("\n No more bottles of beer on the wall\n")
| NinetyNineBottlesOfBeer(1) =
  (print("\n 1 bottle of beer on the wall, 1 bottle of beer.");
    print("\n Take one down and pass it around.");
    NinetyNineBottlesOfBeer(0))
| NinetyNineBottlesOfBeer(NumberOfBottles:int) =
  (print("\n "); printVal(NumberOfBottles);
    print(" bottle of beer on the wall, ");
    printVal(NumberOfBottles);
    print(" bottle of beer.");
    print("\n Take one down and pass it around.");
    NinetyNineBottlesOfBeer(NumberOfBottles - 1));
