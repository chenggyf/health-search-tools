/*
 * July 23rd, 2013
 * 
 * Post objects contain the string of the post content and some other 
 * features about the post parsed from the html.  These features will be used 
 * by some of the classifiers to determine whether the post fits the definition
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
public class Post {
    private String postContent;  // the actual post
	private String numLinks; // the number of links within the post
	private String numPostsByUser; // number of posts by the user
	private String replyNum; // where the post falls in the thread (first=0)
	private String isTerminating; // whether the post is the last in the thread
	private String numChars; // number of characters in the thread
	private String wordsPerPara; // number of words between every <br/>
	private String breaksToWordsRatio; // ratio of the # words to the # <br/>'s
	
	// Don't do anything at initialization; 
	// we'll set the attributes as we go through the html code
	public Post(){	
	}
	
	// Setters that set the value of each attribute:
	public void setContent(String postContent){
		this.postContent=postContent;
	}
	public void setNumLinks(String numLinks) {
		this.numLinks=numLinks;	
	}
	public void setnumPostsByUser(String numPostsByUser) {
		this.numPostsByUser = numPostsByUser;
	}
	public void setreplyNum(String replyNum) {
		this.replyNum=replyNum;
	}
	public void setisTerminating(String isTerminating) {
		this.isTerminating=isTerminating;
	}
	public void setnumChars(String numChars) {
		this.numChars = numChars;
	}
	public void setwordsParPara(String wordsPerPara) {
		this.wordsPerPara=wordsPerPara;
	}
	public void setbreaksToWordsRatio(String breaksToWordsRatio) {
		this.breaksToWordsRatio=breaksToWordsRatio;
	}
		
	// Getters that return the values of each attribute:
	public String getContent(){
		return postContent;
	}
	public String getNumLinks() {
		return numLinks;
	}
	public String numPostsByUser() {
		return numPostsByUser;
	}
	public String replyNum() {
		return replyNum;
	}
	public String isTerminating() {
		return isTerminating;
	}
	public String numChars() {
		return numChars;
	}
	public String wordsParPara() {
		return wordsPerPara;
	}
	public String breaksToWordsRatio() {
		return breaksToWordsRatio;
	}    
}
