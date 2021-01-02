function getCate(){
	return document.getElementById('cate').value;
}
function setClassSeleted(id){
	$('#filterSort > li > a').removeClass('selectedSort');
	if(id != null)
	$('#'+id).addClass('selectedSort');
}
function sortProduct(arr , sortType)
{
	if(sortType == 'Giá: Tăng dần'){
		return arr.sort(function(a,b){
			var priceA;
			var priceB;
			if(a.price_sale != null) priceA = a.price_sale;
			else priceA = a.price;
			if(b.price_sale != null) priceB = b.price_sale;
			else priceB = b.price;
			return priceA - priceB;
		});
	}
	if(sortType == 'Giá: Giảm dần'){
		return arr.sort(function(a,b){
			var priceA;
			var priceB;
			if(a.price_sale != null) priceA = a.price_sale;
			else priceA = a.price;
			if(b.price_sale != null) priceB = b.price_sale;
			else priceB = b.price;
			return priceB - priceA ;
		});
	}
	if(sortType == 'Tên: A-Z'){
		return arr.sort(function(a,b){
			if(a.title > b.title) 1;
			else if(a.title == b.title) 0;
			else return 0;
		});
	}
	if(sortType == 'Tên: Z-A'){
		return arr.sort(function(a,b){
			if(b.title > a.title) 1;
			else if(a.title == b.title) 0;
			else return 0;
		});
	}
}
function sizeProductSort(arr , sizeArr){
	return arr.filter(function(ele){
		for(var i = 0; i< sizeArr.length;i++){
			if(!ele.size.split('-').includes(String(sizeArr[i]))) return false;
		}
		return true;
	});
}
var app = new Vue({
  el: '#app',
  data:{
  	filterApplied:[],
  	cate:null,
  	products:[],
  	sort:null,
  	size:[],
  },
  computed:{
  	filterItems:function(){
  	var prdList = this.products;
  	var prdListFinal = [];
  	var count = 0;
  		if(this.filterApplied.length > 0){
  			this.filterApplied.forEach(function(element){
  				if(element == 'Dưới 500,000₫'){
  					prdListFinal = prdListFinal.concat(prdList.filter(function(subele){
  						if(subele.price_sale != null)
  							return parseInt(subele.price_sale) < 500000
  						else return parseInt(subele.price) < 500000
  					}));
  				}
  				else if(element == '500,000₫-1,000,000₫'){
  					prdListFinal = prdListFinal.concat(prdList.filter(function(subele){
	  					if(subele.price_sale != null)
	  						return parseInt(subele.price_sale) >500000 && parseInt(subele.price_sale) < 1000000;
	  					else return parseInt(subele.price) >500000 && parseInt(subele.price) < 1000000;
  					}));
  				}
  				else if(element == '1,000,000₫-1,500,000₫'){
  					prdListFinal = prdListFinal.concat(prdList.filter(function(subele){
	  					if(subele.price_sale != null)
	  						return parseInt(subele.price_sale) >1000000 && parseInt(subele.price_sale) < 1500000;
	  					else return parseInt(subele.price) >1000000 && parseInt(subele.price) < 1500000;
  					}));
  				}
  				else if(element == '1,500,000₫-5,000,000₫'){
  					prdListFinal = prdListFinal.concat(prdList.filter(function(subele){
  					if(subele.price_sale != null)
  						return parseInt(subele.price_sale) >1500000 && parseInt(subele.price_sale) < 5000000;
  					else return parseInt(subele.price) >1500000 && parseInt(subele.price) < 5000000;
  					}));
  				}
  				else if(element == 'Trên 5,000,000₫'){
  					prdListFinal = prdListFinal.concat(prdList.filter(function(subele){
  					if(subele.price_sale != null)
  						return parseInt(subele.price_sale) > 5000000;
  					else return parseInt(subele.price) > 5000000;
  					}));
  				}
  			})
  		count++;
 	}
  		if(this.sort != null){
  			if(count == 0){
  			prdListFinal = sortProduct(this.products,this.sort);}
  			else prdListFinal = sortProduct(prdListFinal,this.sort);
  			count++;
  		}
  		if(this.size.length > 0){
  			check = true;
  			if(count == 0){
  			prdListFinal = sizeProductSort(this.products,this.size);}
  			else prdListFinal = sizeProductSort(prdListFinal,this.size);
  			count++; 
  		}
  		if(count > 0 ) return prdListFinal;
  		
  		else return this.products;
  	}
  }
  ,
  methods:{
  setfilterApplied:function(fil){
  	this.filterApplied = this.filterApplied.filter(dk => dk != fil);
  },
  setSize:function(fil){
  	this.size = this.size.filter(dk => dk != fil);
  },
  setSort:function(id,sortSl){
  	setClassSeleted(id);
  	this.sort = sortSl;
  },
   setSortNull:function(){
   setClassSeleted(null);
  	this.sort =null;
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