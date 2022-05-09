pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task{
        uint id;
        string content;
        bool completed;
    }

    // 
    mapping(uint => Task) public tasks;

    // Function that is called whenever the smart contract is run for the first time (Deployment).
    constructor() public{
        createTask("Get milk.");
    }

    // Function to create new Task.
    function createTask(string memory _content) public{
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }

}