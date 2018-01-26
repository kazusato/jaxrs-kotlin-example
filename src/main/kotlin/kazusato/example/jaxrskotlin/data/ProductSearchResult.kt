package kazusato.example.jaxrskotlin.data

data class ProductSearchResult(
        var category: String = "",
        var productList: MutableList<Product> = mutableListOf<Product>()
) {
    fun addAll(products: Collection<Product>) {
        productList.addAll(products)
    }
}
