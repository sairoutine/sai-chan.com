<product-box>
  <div class="product-box page">
    <section ref="products" class="product" each={ product in opts.product }>
      <a class="link" href={ product.link } title={ product.title }>
        <img class="thumb" src={ product.thumb } alt={ product.title } />
        <h3 class="name">{ product.name }</h3>
      </a>
      <p class="description"></p>
    </section>
  </div>

  <script>
  this.on('mount', () => {
    this.refs.products.forEach((product, key) => {
      product.children[1].innerHTML = opts.product[key].description
    })
  })
  </script>
</product-box>
