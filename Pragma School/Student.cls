//Classe de Estudante
public class Student {

    //Declaração de atributos 
    public String firstName;
    public String lastName;
	public String email;
    
    public Boolean isLegal;
    public Boolean isScholarshipHolder;
    
    public Integer age;
    public String country;
    public Integer registrationNumber;
    public Decimal examGrade;
    public Decimal averageGrade;
    
    public Graduation graduation;

    public String username;
    public String password;

    //Método Construtor
    public Student(String studentFirstName, String studentLastName, String studentEmail, Integer studentAge, String emailProvider)
    {
        this.firstName = studentFirstName;
        this.lastName = studentLastName;
        this.email = studentEmail;
        this.age = studentAge;

        this.username = this.getUserName(emailProvider);
        this.password = this.getPassword();
    }

    //Método que gera o username do estudante
    public String getUserName(String emailProvider){
        String formattedFirstName = this.firstName.trim().toLowerCase();
        String formattedLastName = this.lastName.trim().toLowerCase().replace('', '');

        String userName = formattedFirstName + '.' + formattedLastName + '@' + emailProvider + '.com';

        return userName;
    }

    //Método que gera a senha do estudante
    public String getPassword(){
        String formattedFirstName = this.firstName.trim().toLowerCase();
        String formattedLastName = this.lastName.trim().toLowerCase().replace('', '');

        String firstNameFirstLetter = formattedFirstName.left(1);
        String lastNameFirstLetter = formattedLastName.left(1);
        String lastNameLastLetter = formattedLastName.right(1);

        String password = firstNameFirstLetter + '.' + lastNameFirstLetter + lastNameLastLetter + '@' + this.age;
        return password;
    }

    //Método que verifica se um aluno está aprovado ou não
    public String getStatus(){
        if(this.averageGrade >= 6){
            return 'Student is approved';
        }
        else{
            return 'Student is disapproved';
        }
    }

    //Método para a validação de cadastro do estudante
    public String isValid(){
        String message = '';
        Boolean hasError = false;

        if(String.isBlank(this.firstName) || this.firstName.length() < 3){
            message += 'Student first name is invalid';
            hasError = true;
        }
       
        if(String.isBlank(this.lastName) || this.lastName.length() < 3){
            message += 'Student last name is invalid';
            hasError = true;
        }
            
        if(String.isBlank(this.email) || this.email.contains('@') || this.email.contains('.com')){
            message += 'Student email is invalid';
            hasError = true;
        }
                
        if(this.age == null || this.age <= 21){
            message += 'Student age is invalid';
            hasError = true;
        }

        if (hasError){
            return message;
        }
        else{
            return 'Student is Valid';
        }
    }
}