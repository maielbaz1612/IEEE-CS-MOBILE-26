import 'vehicle.dart';

void main() {
  Car car1 = Car(
    1600,
    215,
    2023,
    "Gasoline",
    "Peugeot",
    1250000,
    "Automatic",
    5,
  );
  Car car2 = Car(1800, 244, 2022, "Hybrid", "BMW", 2350000, "Automatic", 5);

  if (car1.speed > car2.speed) {
    print(car1.toString());
  } else {
    print(car2.toString());
  }

  Truck truck1 = Truck(2000, 170, 2015, "Diesel", "Chevrolet", 1215000, 2000);
  Truck truck2 = Truck(1800, 150, 2024, "Diesel", "Daihatsu", 1720000, 1250);

  if (truck1.LoadCap > truck2.LoadCap) {
    print(truck1.toString());
  } else {
    print(truck2.toString());
  }

  MotorCycle moto1 = MotorCycle(
    750,
    110,
    2011,
    "Electric",
    "Suzuki",
    116000,
    3,
    true,
  );
  MotorCycle moto2 = MotorCycle(
    1400,
    200,
    2021,
    "Gazoline",
    "Honda",
    1040500,
    2,
    false,
  );

  if (moto1.Price < moto2.Price) {
    print(moto1.toString());
    if (moto1.sideCar == true) {
      print("Side Car : Yes");
    } else {
      print("Side Car : No");
    }
  } else {
    print(moto2.toString());
    if (moto2.sideCar == true) {
      print("Side Car : Yes");
    } else {
      print("Side Car : No");
    }
  }
}
