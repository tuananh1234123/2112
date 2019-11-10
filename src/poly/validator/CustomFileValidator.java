package poly.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;
public class CustomFileValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		//return FileUploadModel.class.isAssignableFrom(clazz);
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		
	}

}
