package br.com.dmttrosario.ramon.models;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class VeiculoValidation implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Veiculo.class.isAssignableFrom(clazz);
	}
	

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "placa", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "motivo_apreecao", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "dataApreecao", "field.required");
		Veiculo veiculo = (Veiculo) target;
		if(veiculo.getNumero() <= 0){
			errors.rejectValue("numero", "field.required");
		}
	}

}
