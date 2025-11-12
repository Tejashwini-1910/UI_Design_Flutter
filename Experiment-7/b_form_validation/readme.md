# Experiment 7(b): Implement Form Validation and Error Handling

## 🎯 Objective
To implement **form validation** and display **error messages** when input fields are invalid or left empty.

---

## 🧠 Theory
Flutter provides form validation using:
- `Form` widget and `GlobalKey<FormState>` for validation state.  
- `validator:` property inside each `TextFormField`.  
- `formKey.currentState!.validate()` to check if all fields are valid.

---
### Output

[<img src="form_validation_output.png" width="300"/>](form_validation_output.png)