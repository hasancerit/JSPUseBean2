package usebean2p;

public class ModelKisi {
	private String ad,soyad,yil;
	
	public ModelKisi() {
	
	}
	
	public ModelKisi(String ad,String soyad,String yil) {
		super();
		this.ad = ad;
		this.soyad = soyad;
		this.yil = yil;
	}

	
	public String getYil() {
		return yil;
	}

	public void setYil(String yil) {
		this.yil = yil;
	}

	public String getSoyad() {
		return soyad;
	}

	public void setSoyad(String soyad) {
		this.soyad = soyad;
	}

	public String getAd() {
		return ad;
	}

	public void setAd(String ad) {
		this.ad = ad;
	}
	
}
