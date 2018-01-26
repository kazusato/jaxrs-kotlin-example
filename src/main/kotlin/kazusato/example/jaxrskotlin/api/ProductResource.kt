package kazusato.example.jaxrskotlin.api

import kazusato.example.jaxrskotlin.data.Product
import kazusato.example.jaxrskotlin.data.ProductSearchCriteria
import kazusato.example.jaxrskotlin.data.ProductSearchResult
import javax.ws.rs.Consumes
import javax.ws.rs.GET
import javax.ws.rs.POST
import javax.ws.rs.Path
import javax.ws.rs.PathParam
import javax.ws.rs.Produces
import javax.ws.rs.core.MediaType

@Path("/product")
class ProductResource {

    private val allProductList = listOf(
            Product(1L, "Tablet-A", "tablet"),
            Product(2L, "Tablet-B", "tablet"),
            Product(3L, "Phone-A", "phone")
    )

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    fun getProduct(@PathParam("id") id: Long): Product? = findProductById(id)

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    fun searchProduct(criteria: ProductSearchCriteria): ProductSearchResult {
        val result = ProductSearchResult(category=criteria.category)
        val products = findProductsByCategory(criteria.category)
        result.addAll(products)

        return result
    }

    private fun findProductById(id: Long): Product? =
            allProductList.filter { p -> p.id == id }.firstOrNull()

    private fun findProductsByCategory(category: String): List<Product> =
            allProductList.filter { p -> p.category == category}

}