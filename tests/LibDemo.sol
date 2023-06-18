// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.15;

import {wadTest} from "./utils/Math.sol";

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

    function read3(
        address pointer,
        uint256 start,
        uint256 end
    ) public view {
        start += 1;
        end += 1;
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

contract LibDemo5 {
    enum Error {
        None,
        RevertWithMessage,
        RevertWithoutMessage,
        Panic
    }

    Error private immutable _error;

    constructor(Error error) {
        _error = error;
    }

    function test0() public view {
        if (_error == Error.RevertWithMessage) {
            
        } else if (_error == Error.RevertWithoutMessage) {
            
        } else if (_error == Error.Panic) {
            uint256 a = uint256(0) / uint256(1);
            a;
        }
    }

    function test1() public view {
        Error tmpError = _error;
        if (tmpError == Error.RevertWithMessage) {
            
        } else if (tmpError == Error.RevertWithoutMessage) {
            
        } else if (tmpError == Error.Panic) {
            uint256 a = uint256(0) / uint256(1);
            a;
        }
    }
}

contract LibDemo6 {
     bool a;
     uint constant TRUE = 1;
     uint constant FALSE = 2;
     uint c = FALSE;
     bool immutable tt;
     uint immutable cc;

     constructor(bool bb){
         cc = bb ? TRUE:FALSE;
         tt = bb;
     }

     function test0() public {
         if (!a){
             uint tmp = 8;
         }
     }

     function test1() public {
         if (c == FALSE) {
            uint tmp = 8;
         }
     }

     function test2() public returns (bool) {
         return a;
     }

     function test3() public returns (bool) {
         return c==TRUE;
     }

     function test4(bool b) public {
         a = b;
     }
     function test5(bool b) public {
         c = b?TRUE:FALSE;
     }
}

contract LibDemo7 {
    int256 internal immutable bb;

    constructor(int256 _priceDecayPercent) public {
        bb = wadTest(10 - _priceDecayPercent);
        require(bb < 0, "NON_NEGATIVE_DECAY_CONSTANT");
    }
}

contract LibDemo8 {
    int256 internal immutable bb;

    constructor(int256 _priceDecayPercent) public {
        int256 cc = wadTest(10 - _priceDecayPercent);
        bb = cc;
        require(cc < 0, "NON_NEGATIVE_DECAY_CONSTANT");
    }
}

struct Execution {
    uint256 e;
}

struct BatchExecution {
    Execution e;
}

contract LibDemo9 {
    function _compressExecutions1(
        Execution[] memory executions
    ) external pure returns (
        Execution[] memory standardExecutions,
        BatchExecution[] memory batchExecutions
    ) {
        unchecked {
            // Read executions array length from memory and place on the stack.
            uint256 totalExecutions = executions.length;

            // Return early if less than two executions are provided.
            if (totalExecutions < 2) {
                return (executions, new BatchExecution[](0));
            }
        }
    }

    function _compressExecutions2(
        Execution[] memory executions
    ) external pure returns (
        Execution[] memory standardExecutions,
        BatchExecution[] memory batchExecutions
    ) {
        unchecked {
            // Read executions array length from memory and place on the stack.
            uint256 totalExecutions = executions.length;

            // Return early if less than two executions are provided.
            if (totalExecutions <= 1) {
                return (executions, new BatchExecution[](0));
            }
        }
    }

    function test1(uint256 a) public returns (uint256 b) {
        if (a < 2){
            return 2;
        }
        return 1;
    }

    function test2(uint256 a) public returns (uint256 b) {
        if (a <= 1){
            return 2;
        }
        return 1;
    }
}

contract LibDemo10 {
    uint256 constant _NOT_ENTERED = 1;
    uint256 constant _ENTERED = 2;
    uint256 _reentrancyGuard = 1;

    function _assertNonReentrant1() external view {
        // Ensure that the reentrancy guard is not currently set.
        if (_reentrancyGuard == _ENTERED) {
            revert();
        }
    }

    function _assertNonReentrant2() external view {
        // Ensure that the reentrancy guard is not currently set.\
        if (_reentrancyGuard != _NOT_ENTERED) {
            revert();
        }
    }
}