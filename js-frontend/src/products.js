class Products {
    constructor() {
        this.products = []
        this.service = new ProductsService()
        this.bindEventListeners()
    }
}