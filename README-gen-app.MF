# VHS Rental shop - Blast from the past

We are creating a cutting edge VHS rental application management system for our special clients that value the old time retro VHS experience. 

![img_1.png](backtothepast.png)

### VHS Rental Application

#### API
1. Implement a VHS resource RESTful API over http. 
Path to this resource should be: /api/vhs
3. Implement CRUD RESTful API for Rental resource. 
Path to this resource should be: /api/rental
#### Model
- Model VHS 
- Model User 
- Model Rental 
#### Requirements
- RentalController should accept needed user ID data, vhs ID data, and rental date(use form or PATH parameters) 
- Make sure that the same vhs can't have multiple rentals on the same date
- handle rental due dates and late fees
- 4 HTTP methods should be implemented. (e.g. GET, POST, PUT and DELETE)
- Use Repository pattern
- Divide service layer from controller and repositories. 
- Externalize configuration.
- Use validation on RentalForm to validate requests to RentalController
- Customize error messages from REST controller with Message Source
- Prepopulate database of choice (H2, Postgresql or any other non-Oracle database)
- Create automated tests 

#### API&Security 

- Write API specification for all controller endpoints you have in your application by using swagger lib
- Implement security model with two existing roles. ROLE_ADMIN, ROLE_USER 
- Add ROLE_ADMIN to all rental shop workers in the system, and ROLE_USER to all existing rental shop clients in the system
- Implement login/logout and use with User and Workers credentials
- Forbid users with ROLE_USER access to RentalController resources

#### Postman collection
Design a simple postman collection to our VHS rental shop that will have these mandatory actions:
- Login/Logout
- VHS
  - List
  - VHS Rent and Return option
- List of Rentals



# Guidance:

### Setup your account and repository
1. Setup GitHub account
2. Checkout repository with assignment
3. Fork your own repository
4. Create your own branch
5. Add your mentor as member to your repository with role Maintainer

### Tech stack

This version of the VHS Lab is more oriented around DevOps and as such is technology-agnostic.
The candidate can use any language/framework to implement his or her solution. 
All functional and non-functional requirements defined above need to be satisfied. In case you want to use Java and Spring follow the guidance provided in https://github.com/true-north-engineering/vhs-lab.git
