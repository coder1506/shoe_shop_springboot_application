function filterStatus(filterApplied){
	filterApplied.forEach(element =>
			$('#filter_status').append("<div class = 'filter_selected'>"+
			element+"<div class = 'btn-close'>x</div></div>")
		)
}
var filter = {
	filterApplied:[],
	setFilterApplied:function(filter){
		this.filterApplied.push(filter);
		filterStatus(this.filterApplied);
	},
	removeFilterElement:function(fil){
		this.filterApplied = this.filterApplied.filter(element => element != fil);
		$( "body" ).load(window.location.href + "#filter_status" );
	}
}