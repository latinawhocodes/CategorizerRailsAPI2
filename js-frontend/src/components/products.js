class Products {
    constructor() {
        this.products = []
        this.service = new ProductsService()
        this.bindEventListeners()
        this.fetchProducts()
    }

    fetchProducts() {
        this.service.getProducts().then(products => {
        }).then(() => this.displayProducts() ) 
    }

    displayProducts() {
        const productContainer = document.getElementById()
    }
}