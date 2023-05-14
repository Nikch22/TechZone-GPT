pragma solidity ^0.8.4;

contract MyContract {
    address payable public owner;

    constructor() public {
        owner = payable(0xA35a1a1337ca1668E654679E65237693cB404c53);
    }
    event Informacion_de_transaccion(uint[] idproducto,address comprador);

    function pagarProducto(uint precio, uint[] memory ids, address comprador) public payable {
        require(msg.value == precio, "El precio no coincide con el valor enviado");
        owner.transfer(msg.value);
        emit Informacion_de_transaccion(ids,comprador);
    }
}