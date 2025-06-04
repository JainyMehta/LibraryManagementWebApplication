# 📚 Library Management System – Java SOAP Web Service & Client

This is a Java EE-based **Library Management System** project featuring a **SOAP Web Service (JAX-WS)** and a **Java client application**. It provides functionality to manage library users, employee, books and Issue History, allowing operations like inserting, updating, retrieving, and deleting users using a MySQL database backend. The Library Management System is an online Java Platform  for assisting a librarian in managing a book library. 

---

## ✨ Features

A Library Management System where the focus is on three main Users:
  
  - Patron/Reader
      - Register
      - Login
      - Search Books by Title
      - Search Books by Author
      - View Issue History
  - Admin
      - Login
      - Add Employee
      - Delete Employee
      - View Employees
      - Update Employees
  - Employee
      - Login
      - Search Books by Title
      - Search Books by Author
      - Add Books
      - Update Books
      - Delete Books
      - View Books
      - View Users
      - Modify Users
      - Delete Users
      - Issue Books
      - Receive Books
        
- Follows **SOAP architecture using JAX-WS annotations**
- Uses **JPA** for database interaction with **MySQL**
- Deployable via **NetBeans + Tomcat or GlassFish**

---

## 🧰 Technologies Used

- Java 8+
- JAX-WS (SOAP)
- JPA (Java Persistence API)
- MySQL
- NetBeans
- Maven

---

## 🛠️ Setup Instructions

### 1. 🗄️ Database Setup

- Create a MySQL database (e.g., `LibraryMngtSystem`).
- Add the `libraryuser` table based on your `Libraryuser` model.
- Insert sample data as needed.

### 2. ⚙️ WebService Setup

1. Open the `/WebService` folder in **NetBeans**.
2. Update DB credentials in `UserService.java`:
   ```java
   Persistence.createEntityManagerFactory("LibraryMngtSystem");
````

3. Clean and build the project.
4. Deploy to Tomcat or GlassFish.
5. Access the WSDL endpoint at:

   ```
   http://localhost:8080/LibraryManagementSystemWS/UserService?wsdl
   ```

### 3. 🖥️ Client Setup

1. Open `/Client` in NetBeans.
2. Right-click the project → **New > Web Service Client**
3. Enter the WSDL URL (from above) to generate service stubs.
4. Use the client UI or console to call the SOAP service methods.

---

## 📂 Sample Methods

* `InsertUser(Libraryuser user)` – Adds a new user to the database.
* `DisplayUser()` – Returns all users.
* `DisplayUserById(int id)` – Returns a specific user.
* `updateUser(Libraryuser user)` – Updates a user.
* `DeleteUser(int id)` – Deletes a user by ID.

---

## 📦 Highlights

* Demonstrates full-cycle SOAP service development in Java.
* Integrated persistence layer with JPA and MySQL.
* Well-organized structure with separation between service and client.
* Ready for academic, training, or demo purposes.

---
