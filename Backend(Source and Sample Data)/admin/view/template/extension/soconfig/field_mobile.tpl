<?php 
/******************************************************
 * @package	SO Theme Framework for Opencart 2.0.x
 * @author	http://www.openfoxx.com
 * @license	GNU General Public License
 * @copyright(C) 2008-2015 openfoxx.com. All rights reserved.
*******************************************************/

?>


<?php 
if (!function_exists('field_onOff')) {
	function field_onOff($field_name) {
		global  $config_mobile;
		$onClassActive = null;
		$offClassActive = null;
		$onCheck = null;
		$offCheck = null;
	
		$names	= 'mobile_general['.$field_name.']';
		$values = isset($config_mobile[$field_name]) ? $config_mobile[$field_name] : '1';
		
		($values == 1)? $onClassActive ='btn-success active' : $offClassActive='btn-success active';
		($values == 1)? $onCheck ='checked="checked"' : $offCheck='checked="checked"';
		
		$fieldOnOff  = '<div class="btn-group btn-toggle" data-toggle="buttons">';
		$fieldOnOff .= '<label class="btn btn-default btn-sm '.$onClassActive.'">';
		$fieldOnOff .= '<input type="radio" name="'.$names.'" value="1" '.$onCheck.'>ON';
		$fieldOnOff .= '</label>';
		$fieldOnOff .= '<label class="btn btn-default btn-sm '.$offClassActive.'">';
		$fieldOnOff .= '<input type="radio" name="'.$names.'" value="0" '.$offCheck.'>OFF';
		$fieldOnOff .= '</label>';
		$fieldOnOff .=	'</div>';
		return $fieldOnOff;
	}
}

if (!function_exists('field_onOffFont')) {
	function field_onOffFont($field_name) {
		global  $config_mobile;
		$onClassActive = null;
		$offClassActive = null;
		$onCheck = null;
		$offCheck = null;
		
		
		$names	= 'mobile_general['.$field_name.']';
		$values = isset($config_mobile[$field_name]) ? $config_mobile[$field_name] : 'standard';
		
		(($values == 'standard')? $onClassActive ='btn-success active' : $offClassActive='btn-success active');
		(($values == 'standard')? $onCheck ='checked="checked"' : $offCheck='checked="checked"');
		
		$fieldOnOff  = '<div class="btn-group btn-toggle block-group " data-toggle="buttons">';
		$fieldOnOff .= '<label class="btn btn-default btn-sm '.$onClassActive.'">';
		$fieldOnOff .= '<input class="type-fonts" type="radio" name="'.$names.'" value="standard" '.$onCheck.'>Standard';
		$fieldOnOff .= '</label>';
		$fieldOnOff .= '<label class="btn btn-default btn-sm '.$offClassActive.'">';
		$fieldOnOff .= '<input class="type-fonts" type="radio" name="'.$names.'" value="google" '.$offCheck.'>Google Fonts';
		$fieldOnOff .= '</label>';
		$fieldOnOff .=	'</div>';
		return $fieldOnOff;
	}
}

if (!function_exists('field_text')) {
	function field_text($name='',$placeholder=''){
		global  $config_mobile;
		$names	= 'mobile_general['.$name.']';
		$values	= isset($config_mobile[$name]) ? $config_mobile[$name] : '';
		
		return '<input type="text" name="'.$names.'" value="'.$values.'" placeholder="'.$placeholder.'"  class="form-control " />';
	}
}

if (!function_exists('field_textarea')) {
	function field_textarea($name,$placeholder=''){
		global $config_mobile ;
		$names	='mobile_general['.$name.']';
		$values	= isset($config_mobile[$name]) ? $config_mobile[$name] : '';
		return '<textarea name="'.$names.'" rows="5" placeholder="'.$placeholder.'" id="input-description-'.$name.'" class="form-control summernote">'.$values.'</textarea>';
	}
}


if (!function_exists('field_select')) {
	function field_select($field_name,$field_array,$element_class =null){
		global $config_mobile ;
		$names	='mobile_general['.$field_name.']';
		$values	= isset($config_mobile[$field_name]) ? $config_mobile[$field_name] : '';
		
		$fieldSelect  = '<select name="'.$names.'"  class="form-control '.$element_class.'">';
		foreach ($field_array as $fv => $fc){
			($fv == $values) ? $current = 'selected' : $current='';
			$fieldSelect .= '<option value="'.$fv.'" '.$current.' >'.$fc.'</option>	';
		}
		$fieldSelect .= '</select>';
		return $fieldSelect;
	}
}


if (!function_exists('field_typeheader')) {
	function field_typeheader($name,$element_array,$columns= null){
		global $config_mobile ;
		$names	='mobile_general['.$name.']';
		$values	= isset($config_mobile[$name]) ? $config_mobile[$name] : '';
		$columns = isset($columns) ? 'col-sm-'.round(12/$columns) : 'col-sm-12';
		$fieldType  = '<div class="panel-container">';
		foreach ($element_array as $fv => $fc){
			$fieldType  .= '<div class="'.$columns.'" ><div class="group-typeheader radio ">';
			
			$fieldType  .= '<label class="col-sm-12">';
			if($fv == $values){
				$fieldType  .= '<input type="radio" name="'.$names.'" value="'.$fv.'" checked  >';
				$fieldType  .= '<span class="type fa active"><img src="view/options/'.$name.$fv.'.jpg" alt="'.$name.$fv.'"/></span>';
			}else{
				$fieldType  .= '<input type="radio" name="'.$names.'" value="'.$fv.'"   >';
				$fieldType  .= '<span class="type fa"><img src="view/options/'.$name.$fv.'.jpg" alt="'.$name.$fv.'"/></span>';
			}
			$fieldType  .= '</label>';
			$fieldType  .= '<h3 class="typetitle">'.$fc.'</h3>';
			$fieldType  .= '</div></div>';
		}
		
		$fieldType  .= '</div>';
		return $fieldType;
	}
	
}


?>