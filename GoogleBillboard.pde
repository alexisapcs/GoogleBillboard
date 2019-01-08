public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
	String digits;
	double dNum;
	boolean prime = false;
	for ( int i = 2; i < e.length()-10; i++ ) {
		digits = e.substring(i,i+10);
		dNum = Double.parseDouble(digits);
		if (isPrime(dNum)) { System.out.println(dNum); }
	}
	
	
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double num)  
{   
	if (num <= 1) {
	    return false;
	} else if ( num > 1) {
		for ( int i = 2; i <= Math.sqrt(num); i++) {
	    	if ( num % i == 0 && i != num ) {
				return false;
			}
		}
		return true; 
	}   
    return true;  
} 
