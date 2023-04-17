# dart_client_product_crud
A simple **CLI Dart project** focused on the study of the basic structure of the language, using a variation of the Ports &amp; Adapters architecture to create an application to execude the CRUD operations on clients and products entities.

---
Requisites used to create the project:
> 
> Using the example presented in the last class,
> create a program that performs the registration of the following entities:  
> Product  
> - id
> - name
> - description
> - value  
> 
>   Restrictions:  
>    name - *Required*, with at least 3 characters;  
>    value - *Required*, greater than 0.
>
>Client
> - id
> - name
> - CPF
> - Address: Address (street, number, complement, district, city, zip code)
>  
>    Restrictions:  
>    name - *Required*, with at least 3 characters;  
>    CPF - *Required*, with 11 characters;  
>    Address - all address data are *mandatory*, except for the "complement". 


## Technologies used
In this project, only Dart technology was used, therefore, it will be necessary to run the application.  

## Usage
- Simple actions were implemented to carry out CRUD processes of products in memory.  
- Simple actions were implemented to carry out CRUD processes of clients in memory.

## Installation
Clone the repositorie to the machine and execute the following commands.  

This command gets all the dependencies listed in the pubspec.yaml file in the current working directory, as well as their transitive dependencies:
```
dart pub get  
```
This command executes the programm:
```
dart cmd\app\app.dart  
```

### Thanks for reading me ;)