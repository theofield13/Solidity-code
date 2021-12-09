// SPDX-Licence-Identifier: MIT

progma solidity >= 0.7.0 <0.9.0;

contract MyContract {

    uint256 private property;

    // a function marked with 'View' can ONLY read the state of a contract but it promises not to modify it. It requires no transaction and the call costs no gas.
    function readProperty() public view returns (uint256) {
        return property;
    }

    // a pure function promises not neither read nor modify the state of a contract. The call itself costs no gas and the user can be sure no state if affected.
    function calculateWithoutState() public pure return (uint256) {
        return 1 + 1;
    }

    // this function is not marked in any way and thus requires a transaction. It can read and alter states and costs gas.
    function setProperty(uint256 _property) public {
        property = _property;
    }
}
