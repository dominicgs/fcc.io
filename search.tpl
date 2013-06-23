<html>
  <head>
	<title>FCC.io - Submitting request to fcc.gov</title>
  </head>
  <body>
	<form action="https://apps.fcc.gov/oetcf/eas/reports/GenericSearchResult.cfm?RequestTimeout=500"
		  method="post" id="fcc_form">
	  <!-------- HIDDEN FIELDS---------->
	  <input type="hidden" name="application_status" value="">  
	  <input type="hidden" name="applicant_name" value="">                
	  <input type="hidden" name="grant_date_from" value="">
	  <input type="hidden" name="grant_date_to" value="">
	  <input type="hidden" name="grant_comments_label" value="">
	  <input type="hidden" name="application_purpose" value="">
	  <input type="hidden" name="application_purpose_description" value="">              
	  <input type="hidden" name="grant_code_1" value="">
	  <input type="hidden" name="grant_code_2" value="">
	  <input type="hidden" name="grant_code_3" value="">
	  <input type="hidden" name="test_firm" value="">
	  <input type="hidden" name="equipment_class" value="">
	  <input type="hidden" name="equipment_class_description" value="">
	  <input type="hidden" name="lower_frequency" value="">
	  <input type="hidden" name="upper_frequency" value="">
	  <input type="hidden" name="freq_exact_match" value="checked">
	  <input type="hidden" name="bandwidth_from" value="">
	  <input type="hidden" name="emission_designator" value="">
	  <input type="hidden" name="tolerance_from" value="">
	  <input type="hidden" name="tolerance_to" value="">
	  <input type="hidden" name="tolerance_exact_match" value="checked">
	  <input type="hidden" name="power_output_from" value="">
	  <input type="hidden" name="power_output_to" value="">
	  <input type="hidden" name="power_exact_match" value="checked">
	  <input type="hidden" name="rule_part_1" value="">
	  <input type="hidden" name="rule_part_2" value="">
	  <input type="hidden" name="rule_part_3" value="">
	  <input type="hidden" name="rule_part_exact_match" value="checked">
	  <input type="hidden" name="product_description" value="">
	  <input type="hidden" name="tcb_code" value="">
	  <input type="hidden" name="tcb_code_description" value="">
	  <input type="hidden" name="tcb_scope" value="">
	  <input type="hidden" name="tcb_scope_description" value="">
	  <input type="hidden" name="fetchfrom" value="0" >
	  <input type="hidden" name="calledFromFrame" value="Y">
	  <input type="hidden" name="comments" value="">
	  <input type="hidden" name="show_records" value="25">

	  <input type="hidden" name="grantee_code" value="{{appid}}">
	  <input type="hidden" name="product_code" value="{{productid}}">
	</form>

	<script type="text/javascript">
	  document.getElementById('fcc_form').submit();
	</script>
  </body>
</html>
