package Tietovarastopakkaus;

public class Toimenpide {
    
    private int toimenpideID;
    private int kayttajaID;
    private int aloiteID;
    private String kuvaus;
    private String pvm;
    

    public Toimenpide(int toimenpideID, int kayttajaID, int aloiteID, String pvm, String kuvaus ) {

        this.kayttajaID = kayttajaID;
        this.aloiteID = aloiteID;
        this.kuvaus = kuvaus;
        this.pvm = pvm;
    }

    public int getToimenpideID() {
        return toimenpideID;
    }

    public void setToimenpideID(int toimenpideID) {
        this.toimenpideID = toimenpideID;
    }

    public int getKayttajaID() {
        return kayttajaID;
    }

    public void setKayttajaID(int kayttajaID) {
        this.kayttajaID = kayttajaID;
    }

    public int getAloiteID() {
        return aloiteID;
    }

    public void setAloiteID(int aloiteID) {
        this.aloiteID = aloiteID;
    }

    public String getKuvaus() {
        return kuvaus;
    }

    public void setKuvaus(String kuvaus) {
        this.kuvaus = kuvaus;
    }

    public String getPvm() {
        return pvm;
    }

    public void setPvm(String pvm) {
        this.pvm = pvm;
    }
    
}
