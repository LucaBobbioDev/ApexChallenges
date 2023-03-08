public class UniversityClass {

    //Atributos
    public List<Student> studentList = new List<Student>();
    public Graduation graduation;

    //Método para buscar estudante pelo sobrenome
    public List<Student> findByLastName(String searchText){
        List<Student> filteredList = new List<Student>();

        for (Student student : this.studentList){
            if(student.lastName.toLowerCase().contains(searchText.toLowerCase())){
                filteredList.add(student);
            }
        }

        return filteredList;
    }

    //Método para filtrar estudantes menores de idade
    public List<Student> filterByMinor(){
        List<Student> filteredList = new List<Student>();

        for (Student student : this.studentList){
            if (!student.isLegal){
                filteredList.add(student);
            }
        }
        return filteredList;
    }

    //Método para filtrar um estudante pelas notas
    public List<Student> filterByGrade(Decimal minGradeRange, Decimal maxGradeRange){
        List<Student> filteredList = new List<Student>();

        for (Student student : this.studentList){
            if((minGradeRange == null && maxGradeRange != null) && student.averageGrade <= maxGradeRange){
                filteredList.add(student);
            } else if ((minGradeRange != null && maxGradeRange == null) && student.averageGrade >= minGradeRange){
                filteredList.add(student);
            } else if((minGradeRange != null && maxGradeRange != null) && student.averageGrade >= minGradeRange){
                filteredList.add(student);
            }
        }
        return filteredList;
    }

    //Método para filtrar um estudante pelo país
    public Map<String, List<Student>> getByCountry(List<String> countryList){
        Map<String, List<Student>> countryToStudentMap = new Map<String, List<Student>>();

        for (Student student : this.studentList){
            if(countryList.isEmpty() || countryList.contains(student.country)){
                if(countryToStudentMap.containsKey(student.country)){
                    countryToStudentMap.get(student.country).add(student);
                }
            }
            else{
                countryToStudentMap.put(student.country, new List<Student>{student});
            }
        }
        return countryToStudentMap;
    }
}
