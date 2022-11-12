// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract LibDemo {
    address public operator;

    event OperatorUpdated(address newOperator);

    function assignOperator0(address operatorToAssign) external {
         // Set the given address as the new operator.
        operator = operatorToAssign;

        // Emit an event indicating the operator has been updated.
        emit OperatorUpdated(operator);
    }


    function assignOperator(address operatorToAssign) external {
         // Set the given address as the new operator.
        operator = operatorToAssign;

        // Emit an event indicating the operator has been updated.
        emit OperatorUpdated(operatorToAssign);
    }
}

contract LibDemo2 {
    uint256 internal constant DATA_OFFSET = 1;

    function read(
        address pointer,
        uint256 start,
        uint256 end
    ) public view {
        start += DATA_OFFSET;
        end += DATA_OFFSET;
    }

    function read2(
        address pointer,
        uint256 start,
        uint256 end
    ) public view {
        uint a = DATA_OFFSET;
        start += a;
        end += a;
    }
}

contract LibDemo3 {
    uint public sa;
    address public add;

    event opUpdate(uint b);
    event addUpdate(address c);

    function test0(uint va) public {
        sa = va;
        emit opUpdate(sa);
    }

    function test1(uint va) public {
        sa = va;
        emit opUpdate(va);
    }

    function test2() public {
        add = msg.sender;
        emit addUpdate(add);
    }

    function test3() public {
        add = msg.sender;
        emit addUpdate(msg.sender);
    }
}

contract LibDemo4 {
    History private hist;
    struct History {
        Checkpoint[] _checkpoints;
    }

    struct Checkpoint {
        uint32 _blockNumber;
        uint224 _value;
    }
    
    constructor() {
        Checkpoint memory c = Checkpoint(1, 2);
        // Checkpoint[] memory _checkpoints = new Checkpoint[](1);
        // _checkpoints[0] = c;
        // hist._checkpoints = new Checkpoint[](1);
        hist._checkpoints.push(c);
        // hist = History(_checkpoints);
    }

    function test0() public {
        uint len = hist._checkpoints.length;
        Checkpoint memory cp = hist._checkpoints[0];
    }

    function test1() public {
        Checkpoint[] memory _checkpoints = hist._checkpoints;
        uint len = _checkpoints.length;
        Checkpoint memory cp = _checkpoints[0];
    }
}