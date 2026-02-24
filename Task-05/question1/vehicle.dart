class Vehicle {
  int? cylinderCapacity;
  int? maxSpeed;
  String? engineType;
  int? model;
  String? manufacturer;
  int? price;

  Vehicle(CC, speed, model, engineType, manufacturer, price) {
    this.cylinderCapacity = CC;
    this.maxSpeed = speed;
    this.model = model;
    this.engineType = engineType;
    this.manufacturer = manufacturer;
    this.price = price;
  }

  get Price {
    return price;
  }

  set Price(int pr) {
    this.price = pr;
  }

  get Capacity {
    return cylinderCapacity;
  }

  set Capacity(int capacity) {
    this.cylinderCapacity = capacity;
  }

  get speed {
    return maxSpeed;
  }

  set speed(int maxS) {
    this.maxSpeed = maxS;
  }

  get Model {
    return model;
  }

  set Model(int Mod) {
    this.model = Mod;
  }

  get Type {
    return engineType;
  }

  set Type(String type) {
    this.engineType = type;
  }

  get facturer {
    return manufacturer;
  }

  set facturer(String fact) {
    this.manufacturer = fact;
  }

  @override
  String toString() {
    return "cylinder capacity: $cylinderCapacity cc\nmaximum speed: $maxSpeed km/hr\nmodel: $model\nEngine Type: $engineType\nmanufacturer: $manufacturer\nprice : $price Pounds ";
  }
}

class Car extends Vehicle {
  String? _transType;
  int? _numOfPassengers;

  Car(
    super.CC,
    super.speed,
    super.model,
    super.engineType,
    super.manufacturer,
    super.price,
    transmission,
    passengers,
  ) {
    this._transType = transmission;
    this._numOfPassengers = passengers;
  }

  get TransType {
    return _transType;
  }

  set TransType(String type) {
    this._transType = type;
  }

  get passengers {
    return _numOfPassengers;
  }

  set passengers(int num) {
    this._numOfPassengers = num;
  }

  @override
  String toString() {
    return "cylinder capacity: $cylinderCapacity cc\nmaximum speed: $maxSpeed km/hr\nmodel: $model\nEngine Type: $engineType\nmanufacturer: $manufacturer\nprice : $price Pounds\nTransmision Type:$_transType\nnumber of passengers: $_numOfPassengers ";
  }
}

class Truck extends Vehicle {
  int? loadCapacity;

  Truck(
    super.CC,
    super.speed,
    super.model,
    super.engineType,
    super.manufacturer,
    super.price,
    load,
  ) {
    this.loadCapacity = load;
  }

  get LoadCap {
    return loadCapacity;
  }

  set LoadCap(int num) {
    this.loadCapacity = num;
  }

  @override
  String toString() {
    return "cylinder capacity: $cylinderCapacity cc\nmaximum speed: $maxSpeed km/hr\nmodel: $model\nEngine Type: $engineType\nmanufacturer: $manufacturer\nprice : $price Pounds\nLoad Capacity :$loadCapacity";
  }
}

class MotorCycle extends Vehicle {
  int? numOfTiers;
  bool? sideCar;
  String? Found;

  MotorCycle(
    super.CC,
    super.speed,
    super.model,
    super.engineType,
    super.manufacturer,
    super.price,
    tires,
    sidecar,
  ) {
    this.numOfTiers = tires;
    this.sideCar = sidecar;
  }
  get Tiers {
    return numOfTiers;
  }

  set Tiers(int num) {
    this.numOfTiers = num;
  }

  get SideCar {
    return sideCar;
  }

  set SideCar(bool found) {
    this.sideCar = found;
  }

  @override
  String toString() {
    return "cylinder capacity: $cylinderCapacity cc\nmaximum speed: $maxSpeed km/hr\nmodel: $model\nEngine Type: $engineType\nmanufacturer: $manufacturer\nprice : $price Pounds\nNumber of Tires :$numOfTiers";
  }
}
