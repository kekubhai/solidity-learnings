// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract FundMe{
    function fund() public payable {
        //Allow users to send $
        // Have a minimun $ sent
        //1. How do we send Eth to this contract?
          require (msg.value  > 1e18,"did'nt send wnough eth "); //1e18=1 ETH =100000000000000000=
    }
    //function withdraw(} public {}
}