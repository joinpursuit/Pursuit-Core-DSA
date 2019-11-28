const Stack = require('./Stack');

class Parking {
  constructor() {
    this.laneX = new Stack(4)
    this.laneY = new Stack(4)
    this.street = new Stack(3);
    this.carsInX = {
      // 123: true
    }
    this.carsInY = {}
  }

  park(car) {
    if (this.laneX.hasSpace()) {
      this.laneX.push(car);
      this.carsInX[car] = true;
    } else if (this.laneY.hasSpace()) {
      this.laneY.push(car);
      this.carsInY[car] = true;
    } else {
      throw new Error('Parking full!');
    }
  }

  depart(carId) {
    let numOfMoves = 0;
    if (carId in this.carsInX) { // in operator https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/in
      while (this.laneX.peek() !== carId) {
        if (this.laneY.hasSpace()) {
          let removedCar = this.laneX.pop();
          this.laneY.push(removedCar)
        } else {
          let removedCar = this.laneX.pop();
          this.street.push(removedCar)
        }
        numOfMoves++;
      }

      let ourCar = this.laneX.pop();

      console.log('the car is:', ourCar)

      while (!this.street.isEmpty()) {
        this.park(this.street.pop())
      }
      return numOfMoves;
    }
  }
}

let nycParking = new Parking();

nycParking.park(333)
nycParking.park(123)
nycParking.park(1)
nycParking.park(3)
nycParking.park(5)
nycParking.park(79)
nycParking.park(69)
nycParking.park(100);
// console.log(nycParking.carsInX)
// console.log(nycParking.carsInY)
console.log(nycParking.depart(333))
