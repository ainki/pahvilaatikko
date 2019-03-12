package Tietovarastopakkaus;

/**
 *
 * @author Alex
 */
public class Muokkaa {

    private int aloiteID;
    private String aloitekuvaus;

    public String getAloitekuvaus() {
        return aloitekuvaus;
    }
    
    public int getAloiteID() {
        return aloiteID;
    }
    
    public Muokkaa(int aloiteID, String aloitekuvaus) {
        this.aloiteID = aloiteID;
        this.aloitekuvaus = aloitekuvaus;
    }

    

}