class ProductsService {
    constructor() { 
        this.apiURL = 'http://localhost:3000/products'
    }

    getProducts() {
        return fetch(this.apiURL).then(response => response.json())
    }
}
