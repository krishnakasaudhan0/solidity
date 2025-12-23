//SPDX-License-Identifier: MIT
pragma solidity 0.8.31;//telling remox which version we going to use of solidity
contract SimpleStorage {
    //boolean ,uint,int ,address,bytes
    //uint8 - unsigned(default -256)
    // string myname="krishna";
    // int256 myPhoneNumber = 4353453445;
    uint256 public favoriteNumber;
    //public define the visibilty.there are 4 types of visibilty public private external internal.default is internal 
    //default intial value is 0 
    //intial value of favorite NUmber is 0 
    //function
    function store(uint256 number) public {
        favoriteNumber=number;

    }
    ////if a gas calling finction calls a view or pure function - only then will it cost gas 
    function retrieve() public view returns (uint){
        return favoriteNumber;
    }
    
    //veiw ,pure functions dont use gas until it doesnt use inside gas calling function 


    // arrays , struct 

    struct People {
        uint favoriteNumber;
        string name ;

    }
    People public person=People({
        favoriteNumber:2,
        name: "krishna"
    });
    People[] public people;
    function addPerson(string memory _name,uint _favroiteNumber) public{
        People memory newPerson = People({favoriteNumber: _favroiteNumber,name: _name});

        people.push(newPerson);
        nametofavorite[_name]=_favroiteNumber;

    }
    // there are 6 places where we can store data  stack memeory storage calldata code logs

    //call data ,memory : variable exist temporarly
    //storage exist outside the functoin
    //mapping is the datastructure where a key is mapped to a single value 

    mapping (string => uint) public nametofavorite;



}

