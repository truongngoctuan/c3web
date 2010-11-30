//<reference path="jquery-1.4.4.js" />
function Init()
{
    //alert("asd");
    //alert($(".ucButton").attr("id"));
    //http://www.west-wind.com/weblog/posts/42319.aspx
    //$(".ucButton").css('-webkit-border-radius', '10px');

//    $(".ucButton").hover(function() {
//        $(this).css('-webkit-border-radius', '5px');
//    });
}

function InitCheckBox() {
    //http://www.filamentgroup.com/lab/accessible_custom_designed_checkbox_radio_button_inputs_styled_css_jquery/
    $(':checkbox').each(function(i) {
        if ($(this).is('[type=checkbox],[type=radio]')) {
            var input = $(this);

            // get the associated label using the input's id
            var label = $('label[for=\'' + input.attr('id') + '\']');

            // necessary for browsers that don't support the :hover pseudo class on labels
            label.hover(
				function() {
				    if (input.is(':checked')) {
				        label.addClass('checkedHover');
				    }
				    else {
				        label.addClass('hover');
				    }
				},
				function() {
				    label.removeClass('hover checkedHover');
				    if (input.is(':checked')) {
				        label.addClass('checked');
				    }
				}
			);
            //bind custom event, trigger it, bind click,focus,blur events					
            input.bind('updateState', function() {
                if (input.is(':checked')) {
                    if (input.is(':hover')) {
                        label.addClass('checkedHover');
                    }
                    else {
                        label.addClass('checked');
                    }
                }
                else {
                    label.removeClass('checked checkedHover checkedFocus');

                }

            })
			.trigger('updateState')
			.click(function() {
			    $(this).trigger('updateState');
			})
			.focus(function() {
			    label.addClass('focus');
			    if (input.is(':checked')) {
			        $(this).addClass('checkedFocus');
			    }
			})
			.blur(function() { label.removeClass('focus checkedFocus'); });
        }
    });
}

function initDropDownList() {
    $("select[class=ucDropDownList]").bind("mouseenter mouseleave", function(event) {
        $(this).toggleClass("ucDropDownListMouseOver");
    });
}
