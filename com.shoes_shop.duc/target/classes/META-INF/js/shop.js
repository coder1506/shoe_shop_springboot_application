var Shop = {
		
		/**
		 * https://www.w3schools.com/js/js_json_syntax.asp
		 */
		 cartData: function(productCode,productAmount,size) {
			var data = {};
			data["productCode"] = productCode;
			data["productAmount"] = productAmount;
			data["size"] = size;
			$.ajax({
				url: "/save-product-to-cart-with-ajax",
				type: "post",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					if(jsonResult.status == 200) {
						$("#small-circle-cart").html(jsonResult.data);
					} else {
						alert('loi');
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
			        
			    }
			});
		},
		saveContact: function() {
			if(!ValidateEmail($("#email").val())) {
				alert('Email bạn nhập không đúng dạng vui lòng nhập lại');
				return;
			}
			var data = {};
			data["email"] = $("#email").val();
			$.ajax({
				url: "/save-contact-with-ajax",
				type: "post",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					//alert(jsonResult.message);
					//$("#message").html(jsonResult.data);
					//$('#blogModal').modal('show');
					if(jsonResult.status == 200) {
						 $("#email").val("");
						alert(jsonResult.data);
					} else {
						alert('loi');
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
			        
			    }
			});
		},
		cartDeleteData:function (id) {
		const swalWithBootstrapButtons = Swal.mixin({
			  customClass: {
			    confirmButton: 'btn btn-success btn-margin',
			    cancelButton: 'btn btn-danger btn-margin'
			  },
			  buttonsStyling: false
			})

			swalWithBootstrapButtons.fire({
			  title: 'Bạn có muốn xoá sản phẩm này không?',
			  icon: 'warning',
			  showCancelButton: true,
			  confirmButtonText: 'Xoá',
			  cancelButtonText: 'Huỷ',
			  reverseButtons: true
			}).then((result) => {
			  if (result.isConfirmed) {
			var data = {};
			data["id"] = id;
			
			$.ajax({
				url: "/deletecartproduct",
				type: "delete",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					if(jsonResult.status == 200) {
						$( "#cart__product--table" ).load(window.location.href + " #cart__product--table" );
						$( "#small-circle-cart" ).load(window.location.href + " #small-circle-cart" );
					} else {
						alert('loi');
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
			        
			    }
			});
			swalWithBootstrapButtons.fire(
			      'Đã xoá!',
			      'Sản phẩm đã được xoá thành công.',
			      'success'
			    )
			  } else if (
			    /* Read more about handling dismissals below */
			    result.dismiss === Swal.DismissReason.cancel
			  ) {
			    swalWithBootstrapButtons.fire(
			      'Đã huỷ',
			      'Sản phẩm được giữ nguyên',
			      'error'
			    )
			  }
			});
		}
}
function ValidateEmail(mail) 
{
 if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(mail))
  {
    return (true)
  }
    return (false)
}