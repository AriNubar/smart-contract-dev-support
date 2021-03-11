pragma solidity 0.7.0;

contract ChecksEffectsInteractionsPattern {
    bool _activated = true; 
    
    modifier checkActive(){
      require (_activated);
    }
    
    function anyFunction() checkActive public {
      //code to be reverted by deactivation 
    }
}