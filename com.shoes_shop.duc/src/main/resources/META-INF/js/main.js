window.addEventListener("load", event => {

    // Expand Left Side
    var icon = document.querySelector('.left__icon'),
        left = document.querySelector('.left');

    icon.addEventListener('click', expand);

    function expand() {
        if (left.classList.contains('show')) {
            left.classList.remove('show')
        } else {
            left.classList.add('show')
        }
    }

    var menuItem = document.querySelectorAll('.left__menuItem');

    menuItem.forEach(function (el) {
        el.addEventListener("click", openMenu);
    });

    function openMenu(event) {
        var currentmenuItem = event.currentTarget;

        if (currentmenuItem.classList.contains('open')) {
            currentmenuItem.classList.remove('open');
        } else {
            currentmenuItem.classList.add('open');
        }
    };
})
ClassicEditor.create( document.querySelector( '#editor' ) ).catch( error => {
            console.error( error );
} );   
//ajax
//delete product
 function deletePrd(id) {
 	var check = confirm("Bạn có muốn xoá sản phẩm này không ?");
 	if(check == true){
			var data = {};
			data["id"] = id;
			
			$.ajax({
				url: "/admin/deleteproduct",
				type: "delete",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					if(jsonResult.status == 200) {
						window.location.reload();
					} else {
						alert('loi');
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
			        
		 }
	});}
}
//delete category
function deleteCate(id) {
 	var check = confirm("Bạn có muốn xoá danh mục này không ?");
 	if(check == true){
			var data = {};
			data["id"] = id;
			
			$.ajax({
				url: "/admin/deletecategory",
				type: "delete",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					if(jsonResult.status == 200) {
						window.location.reload();
					} else {
						alert('loi');
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
			        
		 }
	});}
}
//editor
ClassicEditor.create( document.querySelector( '#editor1' ) )
		.then( editor => {
			window.editor1 = editor;
		} )
		.catch( err => {
			console.error( err.stack );
		} );

	ClassicEditor.create( document.querySelector( '#editor2' ) )
		.then( editor => {
			window.editor2 = editor;
		} )
		.catch( err => {
			console.error( err.stack );
		} );
	ClassicEditor.create( document.querySelector( '#editor3' ) )
	.then( editor => {
		window.editor3 = editor;
	} )
	.catch( err => {
		console.error( err.stack );
	} );
		  