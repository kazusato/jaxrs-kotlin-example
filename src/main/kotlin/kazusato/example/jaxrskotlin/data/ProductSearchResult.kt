package kazusato.example.jaxrskotlin.data

data class ProductSearchResult(
        var category: String = "",
        var description: String = "jaxrs-kotlin-example product list",
        var productList: MutableList<Product> = mutableListOf<Product>()
) {
    fun addAll(products: Collection<Product>) {
        productList.addAll(products)
    }
}
