// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listofSimpleStorageContracts;
    address[] public listofSimpleStorageAddresses;

    // Function to create a new SimpleStorage contract and store its address
    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listofSimpleStorageContracts.push(newSimpleStorageContract);
        listofSimpleStorageAddresses.push(address(newSimpleStorageContract)); // Store address of the contract
    }

    // Function to store a number in the specific SimpleStorage contract
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Ensure the index is valid
        require(_simpleStorageIndex < listofSimpleStorageContracts.length, "Index out of bounds");

        // Access the SimpleStorage contract and store the value
        SimpleStorage mySimpleStorage = listofSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    // Function to retrieve a number from the specific SimpleStorage contract
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // Ensure the index is valid
        require(_simpleStorageIndex < listofSimpleStorageContracts.length, "Index out of bounds");

        // Access the SimpleStorage contract and retrieve the value
        SimpleStorage mySimpleStorage = listofSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}
