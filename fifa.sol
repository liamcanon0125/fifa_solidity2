pragma solidity ^0.8.7;
contract Factory{
    Child[] public childrean;
    event ChildCreated(
        uint data;
        uint data;
        address childAddress;
    );
    function createchild(uint _data)external{
        Child child = Child(_data);
        childrean.push(child);
        emit ChildCreated(
            now,
            _data,
            address(child)
        );
    }
}

contract Child{
    uint data;
    constructor(uint _data) public {
        data = _data;
    }
}