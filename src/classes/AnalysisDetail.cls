public without sharing class AnalysisDetail {
	private aci_Inspect_Detail__c detail;
	
	public AnalysisDetail(aci_Inspect_Detail__c d){
		detail = d;	
	}
	
	public AnalysisDetail(){
		detail = new aci_Inspect_Detail__c();	
	}
	
	public void setMessage(String m){
		detail.Message__c = m;
	}
	
	public void setStartLine(Integer stLine){
		detail.Start_Line__c = stLine;	
	}
	
	public void setEndLine(Integer endL){
		detail.End_Line__c = endL;
	}
	
	public void addVisibleLine(Integer pos){
		detail.Lines__c = detail.Lines__c + String.valueOf(pos) + ';';
	}
	
	public SObject getSObject(Id resultObjId){
		detail.Inspect_Result__c = resultObjId;
		return detail;
	}
	
	public String getMessage(){
		return detail.Message__c;
	}
	
	public Integer getStartLine(){
		if(detail.Start_Line__c != null)
			return Integer.valueOf(detail.Start_Line__c);
		return 0;	
	}
	
	public Integer getEndLine(){
		if(detail.End_Line__c != null)
			return Integer.valueOf(detail.End_Line__c);
		return 0;
	}
	
	public String getVisibleLines(){
		return detail.Lines__c;
	}
	
	public String getCodeFragment(){
		return detail.Code_Fragment__c;
	}
	
	public void setCodeFragment(String fr){
		detail.Code_Fragment__c = fr;
	}
	
}