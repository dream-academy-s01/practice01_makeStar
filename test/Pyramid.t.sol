// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Pyramid.sol";

contract PyramidTest is Test {
    Pyramid public pyramid;
    string public str;
    uint public count;
    uint public line_no;

    function setUp() public {
       pyramid = new Pyramid();
    }

    function testPyramid() public {
        str = pyramid.run();
        assertEq(str, "*\n**\n***\n****\n*****\n");
    }
}
