import "hardhat/console.sol";


contract Warehouse {
  mapping(address => uint) private _balances;
  uint _sig = 12345;
  struct Context {address user_id; uint warehouse_sig;}
  function transfer(address from, address to, uint amount, bytes memory data) external {
    //  uint g0after = gasleft();
    // console.log("0. has %d gas", g0after);


    // uint g1before = gasleft();
    Context memory ctx = abi.decode(data, (Context));
    // uint g1after = gasleft();
    // console.log("1. use %d gas", g1before-g1after);


    //  uint g2before = gasleft();
    require(_sig == ctx.warehouse_sig, "invalid request");
    //     uint g2after = gasleft();
    // console.log("2. use %d gas", g2before-g2after);


    // console.log("_balances from", _balances[from]);
     uint g3before = gasleft();
    _balances[from] -= amount;
    uint g3after = gasleft();
        console.log("3. use %d gas", g3before-g3after);


    // console.log("_balances to", _balances[to]);
    uint g4before = gasleft();
    _balances[to] += amount;
        uint g4after = gasleft();
        console.log("4. use %d gas", g4before-g4after);


        // uint g5 = gasleft();
        // console.log("5. finally left %d", g5);
  }


  function setBalance(address user, uint amount) external {
      _balances[user] = amount;
  }
}
contract Minter {
  Warehouse public warehouse;
  address public holder;
  function mint(uint amount, bytes calldata data) external {
    warehouse.transfer(holder, msg.sender, amount, data);
  }


  function setWarehourse(address w) external {
      warehouse = Warehouse(w);
  }
}


contract Test {
    Minter m = new Minter();
    Warehouse w = new Warehouse();
    function test() external {
        m.setWarehourse(address(w));
        Warehouse.Context memory ctx = Warehouse.Context(address(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4), 12345);
        w.setBalance(address(0x0), 10000000);
        bytes memory data = abi.encode(ctx);
        //  uint g0before = gasleft();
        // console.log("0. has %d gas", g0before);
        console.logBytes(data);
        m.mint(200, data);
        //  uint g5 = gasleft();
        // console.log("5. finally left %d", g5);


    }
}
