pragma solidity ^0.4.0;
 
contract GreetingsFromEswissolar {
    
    string public Message = "e-swissolar AG is telling Hallo World";
    address Owner; 
    
    function GreetingFromEswissolar (){
    Owner = msg.sender;
    }
 
    function getMessage() constant returns(string){
    return Message;
    }
  
    function setMessage(string NewMessage) returns(string){
    
    if (Owner != msg.sender){
        return "You do not have the permission to change the message";
    }
        
        else{ 
    Message = NewMessage;
    return "The message has been changed";
    }
    
    }
}
