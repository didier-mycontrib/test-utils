package tp.myapp.minibank.itf.domain.dto;

import java.io.Serializable;

public class Adresse implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Long idAdr;
	private String rue;
	private String codePostal;
	private String ville;
		
	
	public Adresse() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Adresse(Long idAdr, String rue, String codePostal, String ville) {
		super();
		this.idAdr = idAdr;
		this.rue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
	}




	@Override
	public String toString() {
		return "Adresse [idAdr=" + idAdr + ", rue=" + rue + ", codePostal="
				+ codePostal + ", ville=" + ville + "]";
	}
	
	public Long getIdAdr() {
		return idAdr;
	}
	public void setIdAdr(Long idAdr) {
		this.idAdr = idAdr;
	}
	public String getRue() {
		return rue;
	}
	public void setRue(String rue) {
		this.rue = rue;
	}
	public String getCodePostal() {
		return codePostal;
	}
	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	
	

}
