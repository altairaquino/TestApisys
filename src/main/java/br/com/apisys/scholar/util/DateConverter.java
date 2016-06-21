package br.com.apisys.scholar.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.ResourceBundle;

import br.com.caelum.vraptor.Convert;
import br.com.caelum.vraptor.Converter;

@Convert(Date.class)
public class DateConverter implements Converter<Date> {

	@Override
	public Date convert(String value, Class<? extends Date> arg1, ResourceBundle arg2) {
		try {
			return new SimpleDateFormat("dd/MM/yyyy").parse(value);
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}

}