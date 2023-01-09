//SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract WillThrow {
    error NotAllowedError(string);

    function aFunction() public pure {
        // require(false, "Error Message");
        // assert(false);
        revert NotAllowedError("You are not allowed!");
    }
}

// Error Handiling:
contract ErrorHandling {
    event errorLogging(string reason);
    event errorLogCode(uint code);
    event errorLogBytes(bytes lowLevelData);

    function catchTheError() public {
        WillThrow will = new WillThrow();
        try will.aFunction() {
            // If works...
        } catch Error(string memory reason) {
            // If dont work... 
            // If REQUIRE dont work:
            emit errorLogging(reason);
        } catch Panic(uint errorCode) {
            // If ASSERT dont work:
            emit errorLogCode(errorCode);
        } catch(bytes memory lowLevelData) {
            // Other Errors:
            emit errorLogBytes(lowLevelData);
        }
    }

}