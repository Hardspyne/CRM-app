# CRM-App
CRM App(CRUD) using Spring MVC, AOP, Spring Security, Spring REST, Hibernate, JSP, MySQL
____
**CRM** - customer relationship management application.
You can view, add, delete, and update customer information depending on your role.

### installation requirements:
 - JDK 8
 - Maven
 - Tomcat
 - MySQL
 
 ### How to install:
 1. Import database to MySQL using web_customer_tracker.sql located in the root directory
 2. Change database connection settings in src\main\resources\persistence-mysql.properties, if required.
 Default values:
    -  url = jdbc:mysql://localhost:3306/web_customer_tracker?useSSL=false&serverTimezone=UTC
    -  user = root
    -  password = root
 3. Open command line in the project directory and enter 'mvn package'
 4. Find .war file in project/target directory and move it to Tomcat directory 'webapps'
 5. Run Tomcat, open your browser and enter http://localhost:8080/crmApp
 
 ### How to use:
 1. You can login under 3 roles:
     - **Guest** can only view the list of customers. ***Login: guest, password: guest***
     - **Manager** also can add and change customers. ***Login: manager, password: manager***
     - **Admin** can also delete customers. Login: ***admin, password: admin***
 2. You can also use REST api: 
    - Examples:
    >   - list of customers: GET http://localhost:8080/crmApp/api/customers
    >   - Customer with specific id: GET http://localhost:8080/crmApp/api/customers/3
    >   - Add customer(need request body): POST http://localhost:8080/crmApp/api/customers
    >   - Update Customer(need request body): PUT http://localhost:8080/crmApp/api/customers/3
    >   - Delete Customer: DELETE http://localhost:8080/crmApp/api/customers/3
