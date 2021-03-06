pragma solidity ^0.5.0;

// ~ Steps for Running ~
// Remember to reset MetaMask
// 1. Run Gnache
// 2. truffle migrate ---reset
// 3. truffle compile
// 4. truffle migrate

// ~ Running test ~
// truffle test

contract TodoList {
    uint public taskCount = 0;

    struct Task{
        uint id;
        string content;
        bool completed;
    }

    // Need a form of loop to call out all the tasks.
    mapping(uint => Task) public tasks;

    event TaskCreated (
        uint id,
        string content,
        bool completed
    );

    // Function that is called whenever the smart contract is run for the first time (Deployment).
    constructor() public{
        createTask("Get milk.");
    }

    // Function to create new Task.
    function createTask(string memory _content) public{
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);

        emit TaskCreated(taskCount, _content, false);
    }
}