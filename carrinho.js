// Array para armazenar os itens do carrinho
let cartItems = [];

// Função para adicionar um item ao carrinho
function addItemToCart(item) {
    cartItems.push(item);
    renderCartItems();
}

// Função para remover um item do carrinho
function removeItemFromCart(index) {
    cartItems.splice(index, 1);
    renderCartItems();
}

// Função para calcular o preço total do carrinho