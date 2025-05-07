public class PrimeNumber {
    public static void checkPrime(Integer num) {
        if (num <= 1) {
            System.debug('Not Prime');
            return;
        }
        
        for (Integer i = 2; i <= Math.sqrt(num); i++) {
            if (num % i == 0) {
                System.debug('Not Prime');
                return;
            }
        }
        
        System.debug('Prime');
    }
}
public class Calculator {
    public static Integer add(Integer a, Integer b) {
        return a + b;
    }

    public static Integer subtract(Integer a, Integer b) {
        return a - b;
    }

    public static Integer multiply(Integer a, Integer b) {
        return a * b;
    }

    public static Double divide(Integer a, Integer b) {
        if (b != 0) {
            return (a / b).toDouble();
        }
        return null; // Handling division by zero
    }

    public static void performOperations(Integer a, Integer b) {
        System.debug('Sum: ' + add(a, b));
        System.debug('Difference: ' + subtract(a, b));
        System.debug('Product: ' + multiply(a, b));
        System.debug('Quotient: ' + divide(a, b));
    }
}
public class TemperatureConversion {
    public static Double celsiusToFahrenheit(Double celsius) {
        return (celsius * 9/5) + 32;
    }

    public static void performConversion(Double celsius) {
        System.debug(celsius + ' Celsius = ' + celsiusToFahrenheit(celsius) + ' Fahrenheit');
    }
}
public class CurrencyConverter {
    private static final Double conversionRate = 83.5;

    public static Double convertUSDToINR(Double usd) {
        return usd * conversionRate;
    }

    public static void performConversion(Double usd) {
        System.debug('USD ' + usd + ' = INR ' + convertUSDToINR(usd));
    }
}
public class MatrixAddition {
    public static Integer[][] addMatrices(Integer[][] matrix1, Integer[][] matrix2) {
        Integer rows = matrix1.size();
        Integer cols = matrix1[0].size();
        Integer[][] result = new Integer[rows][cols];
        
        for (Integer i = 0; i < rows; i++) {
            for (Integer j = 0; j < cols; j++) {
                result[i][j] = matrix1[i][j] + matrix2[i][j];
            }
        }
        
        return result;
    }

    public static void displayMatrix(Integer[][] matrix) {
        for (Integer[] row : matrix) {
            System.debug(row);
        }
    }

    public static void performMatrixAddition(Integer[][] matrix1, Integer[][] matrix2) {
        Integer[][] result = addMatrices(matrix1, matrix2);
        System.debug('Matrix Addition Result:');
        displayMatrix(result);
    }
}
public class MatrixMultiplication {
    public static Integer[][] multiplyMatrices(Integer[][] matrix1, Integer[][] matrix2) {
        Integer rows = matrix1.size();
        Integer cols = matrix2[0].size();
        Integer commonDim = matrix1[0].size();
        Integer[][] result = new Integer[rows][cols];
        
        for (Integer i = 0; i < rows; i++) {
            for (Integer j = 0; j < cols; j++) {
                result[i][j] = 0;
                for (Integer k = 0; k < commonDim; k++) {
                    result[i][j] += matrix1[i][k] * matrix2[k][j];
                }
            }
        }
        
        return result;
    }

    public static void performMatrixMultiplication(Integer[][] matrix1, Integer[][] matrix2) {
        Integer[][] result = multiplyMatrices(matrix1, matrix2);
        System.debug('Matrix Multiplication Result:');
        for (Integer[] row : result) {
            System.debug(row);
        }
    }
}
public class ArrayAddition {
    public static Integer sumArray(Integer[] arr) {
        Integer sum = 0;
        for (Integer num : arr) {
            sum += num;
        }
        return sum;
    }

    public static void performArraySum(Integer[] arr) {
        System.debug('Sum of array elements: ' + sumArray(arr));
    }
}
public class SumOfNaturalNumbers {
    public static Integer sumFirst100() {
        return (100 * (100 + 1)) / 2;
    }

    public static void displaySum() {
        System.debug('Sum of first 100 natural numbers: ' + sumFirst100());
    }
}
public class BFS {
    public static void bfs(Integer start, Map<Integer, List<Integer>> graph) {
        Set<Integer> visited = new Set<Integer>();
        Queue<Integer> queue = new Queue<Integer>();
        queue.add(start);
        visited.add(start);
        
        while (!queue.isEmpty()) {
            Integer node = queue.remove();
            System.debug('Visited: ' + node);
            
            for (Integer neighbor : graph.get(node)) {
                if (!visited.contains(neighbor)) {
                    queue.add(neighbor);
                    visited.add(neighbor);
                }
            }
        }
    }
}
public class ArrayAddition {
    public static Integer[] addArrays(Integer[] arr1, Integer[] arr2) {
        Integer[] result = new Integer[arr1.size()];
        for (Integer i = 0; i < arr1.size(); i++) {
            result[i] = arr1[i] + arr2[i];
        }
        return result;
    }

    public static void performArrayAddition(Integer[] arr1, Integer[] arr2) {
        Integer[] result = addArrays(arr1, arr2);
        System.debug('Array Addition Result: ' + result);
    }
}
public class Geometry {
    public static Double areaOfCircle(Double radius) {
        return Math.PI * radius * radius;
    }

    public static void displayArea(Double radius) {
        System.debug('Area of circle with radius ' + radius + ': ' + areaOfCircle(radius));
    }
}
public class AgeCalculator {
    public static Integer calculateAge(Integer birthYear, Integer currentYear) {
        return currentYear - birthYear;
    }

    public static void displayAge(Integer birthYear, Integer currentYear) {
        System.debug('Age: ' + calculateAge(birthYear, currentYear));
    }
}
public class ElectricityBill {
    public static Double calculateBill(Double units) {
        return units * 5; // Example rate
    }

    public static void displayBill(Double units) {
        System.debug('Electricity Bill for ' + units + ' units: ' + calculateBill(units));
    }
}
public class StudentMarksheet {
    public static String calculateGrade(Integer marks) {
        return marks >= 50 ? 'Pass' : 'Fail';
    }

    public static void displayMarksheet(String name, Integer marks) {
        System.debug('Name: ' + name);
        System.debug('Marks: ' + marks);
        System.debug('Grade: ' + calculateGrade(marks));
    }
}
public class MaxNumber {
    public static Integer findMax(Integer a, Integer b, Integer c) {
        return Math.max(a, Math.max(b, c));
    }

    public static void displayMax(Integer a, Integer b, Integer c) {
        System.debug('Max: ' + findMax(a, b, c));
    }
}
public class Bank {
    public static void checkBalance(Double balance) {
        System.debug('Account Balance: ' + balance);
    }
}
public class BMICalculator {
    public static Double calculateBMI(Double weight, Double height) {
        return weight / (height * height);
    }

    public static void displayBMI(Double weight, Double height) {
        System.debug('BMI: ' + calculateBMI(weight, height));
    }
}
public class CurrencyConverter {
   
    public void convertCurrency(String fromcurrency,String tocurrency, double amount){
        Map<String,Double> conversionrate=new Map<String,Double>{
            'INR-USD' => 0.012,
            'USD-INR' => 83.38,
            'INR-Pound' => 0.0096,
            'Pound-INR' => 104.63,
            'USD-Pound' => 0.80,
            'Pound-USD' => 1.25
            
        };
        System.debug('Available Currency Conversions');
            for(String curr : conversionrate.keySet()){
                System.debug(curr + ' : ' + conversionrate.get(curr));
            }
  
        double convertedcurr = 0;
        String conversionkey=fromcurrency+'-'+tocurrency;
        //key to extract the conversion rate from map
        if(conversionrate.containsKey(conversionkey)){
            //calculate the converted currency
            convertedcurr=amount * conversionrate.get(conversionkey);
            System.debug('Converted Currency is '+ convertedcurr);
        }else{
            System.debug('Conversion rate not found :( Select another currency!');
        }
        
        
    }
}
CurrencyConverter c = new CurrencyConverter();
c.convertCurrency('INR','USD',80);

public class ElectricityBill {
    public void calculate_amt(double units){
        Map<String,Double>rates = new Map<String,Double>{
            '0-100' => 3.36,
            '101-300' => 7.34,
            '301-500' => 10.37,
            '>500' => 11.86
        };
        System.debug('Units'+' : '+'Rate per unit in Rs');
		for(String unit : rates.keySet()) {
            System.debug(unit + ' : ' + rates.get(unit));
        }
        double amount=0;
        if(units > 0 && units <= 100){
            amount = units * 3.36;
                
        }
        else if(units >= 101 && units <= 300){
            amount = 100 * 3.36 + (units - 100) * 7.34;
        }
        else if(units >= 301 && units <= 500){
            amount = 100 * 3.36 + 200 * 7.34 + (units - 300) * 10.37;
        }
        else{
            amount = 100 * 3.36 + 200 * 7.34 + 200 * 10.37 + (units - 500) * 11.86;
        }
        System.debug('The Amount is: '+amount);
    }

}
ElectricityBill e = new ElectricityBill();
e.calculate_amt(350);
public class Calculator{
    public double firstnumber{get;set;}
    public double secondnumber{get;set;}
    public double result{get;set;}
    public void Addition(){
        result = firstnumber + secondnumber;
  
    }
    public void Subtraction(){
        result = firstnumber - secondnumber;
    }
    public void Multiplication(){
        result = firstnumber * secondnumber;
    }
    public void Division(){
        result = firstnumber / secondnumber;
    }
    public void Modulus(){
        result = math.mod(firstnumber.intValue(),secondnumber.intValue());
    }
    public void power(){
        result = math.pow(firstnumber,secondnumber);
    }
    public void square_root1(){
        result = math.sqrt(firstnumber);
    }
    public void square_root2(){
        result = math.sqrt(secondnumber);
    }
    public void square1(){
        result = firstnumber * firstnumber;
    }
    public void square2(){
        result = secondnumber * secondnumber;
    }
    
}

<apex:page controller="Calculator">
    <apex:sectionHeader title="Calculator" subtitle="Simple Calculator"/>
    <apex:form >
    <apex:pageBlock>
        <apex:pageBlockButtons style="text-align: left;" >
            <apex:commandButton value="Addition" action="{!Addition}" reRender="res"/>
            <apex:commandButton value="Subtraction" action="{!Subtraction}" reRender="res"/>
            <apex:commandButton value="Multiplication" action="{!Multiplication}" reRender="res"/>
            <apex:commandButton value="Division" action="{!Division}" reRender="res"/>
            <apex:commandButton value="Modulus" action="{!Modulus}" reRender="res"/>
            <apex:commandButton value="Square of Num1" action="{!square1}" reRender="res"/>
            <apex:commandButton value="Square of Num2" action="{!square2}" reRender="res"/>
            <apex:commandButton value="Sqrt of Num1" action="{!square_root1}" reRender="res"/>
            <apex:commandButton value="Sqrt of Num2" action="{!square_root2}" reRender="res"/>
            <apex:commandButton value="Carat(Power)" action="{!power}" reRender="res"/>
            
        </apex:pageBlockButtons>
        <apex:pageBlockSection >
            <apex:inputText label="Enter first number" html-placeholder="First Number" value="{!firstnumber}"/>
            <apex:inputText label="Enter second number" html-placeholder="Second Number" value="{!secondnumber}"/>
            <apex:outputText label="Result" value="{!result}" id="res" ></apex:outputText>
        </apex:pageBlockSection>
        </apex:pageBlock>
    </apex:form>
</apex:page>

public class Maximum{
    public void compare(integer x, integer y ,integer z){
        if( x!=0 && y!=0 && z!=0){
            if(x==y && y==z){
                System.debug(x+' is the greatest number');
            }
            else if(x>y && x>z){
                System.debug(x+' is the greatest number');
            }
            else if(y>x && y>z){
                System.debug(y+' is the greatest');
            }
            else{
                System.debug(z+' is the greatest');
            }
        }
    }
}
public class Marksheet {
    
    public void calculate_result(String name,Map<String, Integer> subjectMarks) {
        System.debug('Student Name: '+ name);
        System.debug('-----------------------------');
        System.debug('Subject-wise Marks:');
        for(String subject : subjectMarks.keySet()) {
            System.debug(subject + ': ' + subjectMarks.get(subject));
        }
        
        double sum = 0;
        for(Integer mark : subjectMarks.values()) {
            sum += mark;
        }
        System.debug('-----------------------------');
        System.debug('Total Marks are: ' + sum);
        System.debug('-----------------------------');
        System.debug('Percentage: ' + (sum / subjectMarks.size()) +'%');
    }
    
}
Marksheet m = new Marksheet();
Map<String,Integer>marks = new Map<String,Integer>{ 'English' => 88, 'Maths' => 100, 'Science' => 95, 'Economics' => 88, 'Computers' => 100 };
m.calculate_result('Shantanu Wable', marks);

public class Temp 
{
    public static Double celsiusToFahrenheit(Double celsius)
    {
        Double res=(celsius * 9/5)+32;
        return res;
    }
    public static Double fahrenheitToCelsius(Integer  fahrenheit)
    {
        return (fahrenheit-32)*5/9;
    }
    public static Double celsiusToKelvin(Integer  celsius)
    {
        return (celsius+273.15);      
    }
    public static Double kelvinToCelsius(Integer  kelvin)
    {
        return (kelvin-273.15);
    }

}