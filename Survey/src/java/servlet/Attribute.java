/*
 * July 23rd, 2013
 * 
 * Attribute objects contain name of the object, the string to match, and 
 * whether it's a numeric or string attribute.These attributes will be used
 * by a specific classifier to determine whether the post fits the definition
 * of experiential, information seeking, citing information, and listing
 * symptoms.  This class will be used for the classification part of our 
 * Chronic Web site augmentation, which aims to create an interface for 
 * Lymenet.org users that helps them find the most credible, helpful, and
 * relevant posts for their queries.  See "fileNotes.txt" for a list of other 
 * files in this folder
 * 
 */
package servlet;

/**
 *
 * @author jessie
 */
public class Attribute {

    public Attribute() {
    }
    

    private String[] attribute; // the string being matched
	private String attributeName; // the name that goes at the top of the file
	private String type; // the type of attr (string, stem, numeric)
	
	// the actual attributes are hard-coded 
	public Attribute(String[] attr, String type, String name){
		this.attribute=attr;
		this.type=type;
		this.attributeName=name;
	}
	
	// Get the attribute array (the way we search for it in the string)
	public String[] getAttr(){
		return attribute;
	}
	
	// get the type and the options, for use in the header sections
	public String getOptions(){
		if (type.equals("numeric")){
			return "numeric";
		}
		else{
			return "{false,true}";
		}
	}
	
	// get the type; types can be string, stem, or numeric
	public String getType(){
		return type;
	}

	// get the NAME of the attribute, so it matches weka
	// EX: <COLON>
	public String getName() {
		return attributeName;
	}

    
}
