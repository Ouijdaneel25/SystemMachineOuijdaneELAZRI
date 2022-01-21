package beans;

import java.util.Date;

public class Machine {

    private int id;
    private String reference;
    private Date dateAchat;
    private double prix;
    private Marque idMarque;
    private int cpt;
    public Machine() {
    	
    	
    }
    
    public Machine(int id, String reference, Date dateAchat, double prix, Marque idMarque) {
        super();
        this.id = id;
        this.reference = reference;
        this.dateAchat = dateAchat;
        this.prix = prix;
        this.idMarque = idMarque;
    }
    public Machine(int id, String reference, Date dateAchat, double prix, Marque idMarque,int count) {
        super();
        this.id = id;
        this.reference = reference;
        this.dateAchat = dateAchat;
        this.prix = prix;
        this.idMarque = idMarque;
        this.cpt=count;
    }
    public Machine(int id, String reference,  Marque idMarque,int count) {
        super();
        this.id = id;
        this.reference=reference;
        this.idMarque = idMarque;
        this.cpt=count;
    }
    
    public Machine(String reference, Date dateAchat, double prix, Marque idMarque) {
        super();
        this.reference = reference;
        this.dateAchat = dateAchat;
        this.prix = prix;
        this.idMarque = idMarque;
    }

    public Machine(String reference, Date dateAchat, double prix) {
        super();
        this.reference = reference;
        this.dateAchat = dateAchat;
        this.prix = prix;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }

    public Date getDateAchat() {
        return dateAchat;
    }

    public void setDateAchat(Date dateAchat) {
        this.dateAchat = dateAchat;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }
    
    

    public Marque getIdMarque() {
		return idMarque;
	}

	public void setIdMarque(Marque Marque) {
		this.idMarque = Marque;
	}

	@Override
	public String toString() {
		return "Machine [id=" + id + ", reference=" + reference + ", dateAchat=" + dateAchat + ", prix=" + prix
				+ ", idMarque=" + idMarque + "]";
	}

	

}
