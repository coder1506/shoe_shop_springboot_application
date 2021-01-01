function getCate(){
	return document.getElementById('cate').value;
}
var app = new Vue({
  el: '#app',
  data:{
  	filterApplied:[],
  	cate:null,
  	products:[]
  },
  computed:{
  	filterItems:function(){
  	var prdList = this.products;
  		if(this.filterApplied.length > 0){
  			this.filterApplied.forEach(function(element){
  				if(element == 'duoi-500000'){
  					prdList = prdList.filter(function(subele){
  						if(subele.price_sale != null)
  							return parseInt(subele.price_sale) < 500000
  						else return parseInt(subele.price) < 500000
  					});
  				}
  				else if(element == '500000-1000000'){
  					prdList = prdList.filter(function(subele){
	  					if(subele.price_sale != null)
	  						return parseInt(subele.price_sale) >500000 && parseInt(subele.price_sale) < 1000000;
	  					else return parseInt(subele.price) >500000 && parseInt(subele.price) < 1000000;
  					});
  				}
  				else if(element == '1000000-1500000'){
  					prdList = prdList.filter(function(subele){
	  					if(subele.price_sale != null)
	  						return parseInt(subele.price_sale) >1000000 && parseInt(subele.price_sale) < 1500000;
	  					else return parseInt(subele.price) >1000000 && parseInt(subele.price) < 1500000;
  					});
  				}
  				else if(element == '1500000-5000000'){
  					prdList = prdList.filter(function(subele){
  					if(subele.price_sale != null)
  						return parseInt(subele.price_sale) >1500000 && parseInt(subele.price_sale) < 5000000;
  					else return parseInt(subele.price) >1500000 && parseInt(subele.price) < 5000000;
  					});
  				}
  				else if(element == 'tren-500000'){
  					prdList = prdList.filter(function(subele){
  					if(subele.price_sale != null)
  						return parseInt(subele.price_sale) > 5000000;
  					else return parseInt(subele.price) > 5000000;
  					});
  				}
  			})
  			return prdList;
  			}
  	else return this.products;
  	}
  }
  ,
  methods:{
  setfilterApplied:function(fil){
  	this.filterApplied = this.filterApplied.filter(dk => dk != fil);
  },
  setCate:function(){
  	this.cate = getCate();
  	  axios
      .get('/products?cate='+this.cate)
      .then(response => (this.products = response.data))
  },
  setCartData:function(id,sl,size){
  		cartData(id,sl,size);
  },
  formatPrice:function(value) {
        let val = (value/1).toFixed(0).replace('.', ',')
        return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
    }
}

})