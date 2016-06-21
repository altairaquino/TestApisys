package br.com.apisys.scholar.model.entity;

public enum GenderEnum {
	
	M("Male"), F("Female");
	
	private String description;

	GenderEnum(String description){
		this.description = description;
		
	}

	public String getDescription() {
		return description;
	}
	
	public Integer getId(){
		return ordinal();
	}
	
	public static GenderEnum getByName(String value){
		for (GenderEnum gender : GenderEnum.values()) {
			if (gender.name().equals(value)){
				return gender;
			}
		}
		return GenderEnum.M;
	}

}