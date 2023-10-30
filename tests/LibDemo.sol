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

contract LibDemo11 {
    mapping(address => mapping(uint => uint)) balanceOf;
    function safeBatchTransferFrom1(address from,address to, uint[] memory ids, uint[] memory amounts) public {
        uint idsLength = ids.length; 
        for (uint i = 0; i < idsLength;) {
            uint id = ids[i];
            uint amount = amounts[i];
            balanceOf[from][id] -= amount;
            balanceOf[to][id] += amount;
            unchecked { i++; }
        }
    }

    function safeBatchTransferFrom2(address from,address to, uint[] memory ids, uint[] memory amounts) public {
        uint idsLength = ids.length; 
        uint id;
        uint amount;
        for (uint i = 0; i < idsLength;) {
            id = ids[i];
            amount = amounts[i];
            balanceOf[from][id] -= amount;
            balanceOf[to][id] += amount;
            unchecked { i++; }
        }
    }
}

contract LibDemo12 {
    function test1() public returns(uint256, uint256) {
        uint256 t1 = 10;
        uint256 t2 = 12;
        t1+=1;
        t2+=1;
        return (t1, t2);
    }

    function test2() public returns(uint256 t1, uint256 t2) {
        t1 = 10;
        t2 = 12;
        t1+=1;
        t2+=1;
        return (t1, t2);
    }
}

contract LibDemo13 {
    function rpow1(
        uint256 x,
        uint256 n,
        uint256 scalar
    ) public returns (uint256 z) {
        /// @solidity memory-safe-assembly
        uint256 sg = gasleft();
        assembly {
            let half := shr(1, scalar)
            for {
                    // Shift n right by 1 before looping to halve it.
                    n := shr(1, n)
                } n {
                    // Shift n right by 1 each iteration to halve it.
                    n := shr(1, n)
                } {

                    // Store x squared.
                    let xx := mul(x, x)

                    // Round to the nearest number.
                    let xxRound := add(xx, half)

                    // Revert if xx + half overflowed.
                    if lt(xxRound, xx) {
                        revert(0, 0)
                    }

                    // Set x to scaled xxRound.
                    x := div(xxRound, scalar)
                }
        }
        uint256 eg = gasleft();
        z = sg - eg;
    }

    function rpow2(
        uint256 x,
        uint256 n,
        uint256 scalar
    ) public returns (uint256 z) {
        uint256 sg = gasleft();
        /// @solidity memory-safe-assembly
        assembly {
            let half := shr(1, scalar)
            let xx
            let xxRound
            for {
                    // Shift n right by 1 before looping to halve it.
                    n := shr(1, n)
                } n {
                    // Shift n right by 1 each iteration to halve it.
                    n := shr(1, n)
                } {

                    // Store x squared.
                    xx := mul(x, x)

                    // Round to the nearest number.
                    xxRound := add(xx, half)

                    // Revert if xx + half overflowed.
                    if lt(xxRound, xx) {
                        revert(0, 0)
                    }

                    // Set x to scaled xxRound.
                    x := div(xxRound, scalar)
                }
            }
            uint256 eg = gasleft();
            z = sg - eg;
    }
}

contract LibDemo14 {
    struct ConduitProperties {
        bytes32 key;
        address owner;
        address potentialOwner;
        address[] channels;
        mapping(address => uint256) channelIndexesPlusOne;
    }

    event OwnershipTransferred(
        address indexed conduit,
        address indexed previousOwner,
        address indexed newOwner
    );

    mapping(address => ConduitProperties) internal _conduits;

    function acceptOwnership1(address conduit) external {
        if (msg.sender != _conduits[conduit].potentialOwner) {
            // Revert, indicating that caller is not current potential owner.
            
        }
        _conduits[conduit].potentialOwner = address(0);

        // Emit an event indicating conduit ownership has been transferred.
        emit OwnershipTransferred(conduit, _conduits[conduit].owner, msg.sender);

        // Set the caller as the owner of the conduit.
        _conduits[conduit].owner = msg.sender;
    }

    function acceptOwnership2(address conduit) external {        
        ConduitProperties storage p = _conduits[conduit];
        if (msg.sender != p.potentialOwner) {
            // Revert, indicating that caller is not current potential owner.
            
        }
        p.potentialOwner = address(0);

        // Emit an event indicating conduit ownership has been transferred.
        emit OwnershipTransferred(conduit, p.owner, msg.sender);

        // Set the caller as the owner of the conduit.
        p.owner = msg.sender;
    }
}