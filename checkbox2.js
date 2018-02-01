(function() {
	
	var PasswordToggler = function( element, field ) {
		this.element = element;
		this.field = field;
		
		this.toggle();	
	};
	
	PasswordToggler.prototype = {
		toggle: function() {
			var self = this;
			self.element.addEventListener( "change", function() {
				if( self.element.checked ) {
					self.field.setAttribute( "type", "text" );
				} else {
					self.field.setAttribute( "type", "password" );	
				}
            }, false);
		}
	};
	
	document.addEventListener( "DOMContentLoaded", function() {
		var checkbox = document.querySelector( "#show-hide" ),
			password1 = document.querySelector( "#password1" ),
			form = document.querySelector( "#submit" );
			
			form.addEventListener( "submit", function( e ) {
				e.preventDefault();
			}, false);
			
			var toggler = new PasswordToggler( checkbox, password1 );
		
	});
	
})();
