// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    // Struct
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carByOwner;

    function example() public {
        Car memory toyota = Car("RAV4", 2011, msg.sender);
        Car memory honda = Car({ model: "Civic", year: 2020, owner: msg.sender });
        Car memory tesla;
        tesla.model = "3";
        tesla.year = 2021;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(honda);
        cars.push(tesla);

        cars.push(Car("911", 2022, msg.sender));

        // Get
        Car memory _car = cars[0];
        _car.model;
        _car.year;
        _car.owner;

        // Update
        Car storage _car1 = cars[0];
        _car1.year = 2023; 
        // Delete
        delete _car1.owner;
    }

}
