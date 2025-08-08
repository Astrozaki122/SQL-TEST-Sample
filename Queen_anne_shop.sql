--USE [lab 3]
--GO

Create DATABASE Queen_anne_shop

CREATE TABLE CUSTOMER (
CustomerID Integer NOT NULL PRIMARY KEY,
LastName char(25) NOT NULL,
FirstName char(25) NOT NULL,
EmailAddress char(15) NULL,
EncyptedPassword char(20) NULL,
City char(15) NULL,
state char(21) NULL,
ZIP char(18) NULL,
Phone char(13) NOT NULL,
);

CREATE TABLE EMPLOYEE (
EmployeeID Integer NOT NULL PRIMARY KEY,
LastName char(25) NOT NULL,
FirstName char(25) NOT NULL,
Phone char(25) NOT NULL,
Email char(25) NOT NULL,


);

CREATE TABLE VENDOR (
VendorID Integer NOT NULL PRIMARY KEY, 
CompanyName char(25) NULL, 
ContactLastName char(25) NOT NULL,
ContactFirstName char(25) NOT NUll,
Address char(25)NULL,
City char(25) NULL,
State char(25) NULL,  
ZIP char(25) NULL, 
Phone char(25) NOT NULL, 
Fax   char(25) NULL, 
Email char(25) NULL,
);

CREATE TABLE ITEM (ItemID Integer NOT NULL PRIMARY KEY, ItemDescription char(25) NOT NULL, PurchaseDate char(25) NOT NULL, temCost char(25) NOT NULL, ItemPrice char(25) NOT NULL, VendorID Integer NOT NULL,Constraint VENDORFK FOREIGN KEY(VENDORID) REFERENCES Item(itemID));
CREATE TABLE SALE (
SaleID Integer NOT NULL PRIMARY KEY, 
CustomerID Integer NOT NULL, 
EmployeeID Integer NOT NULL, 
SaleDate char(25) NOT NULL,
SubTotal char(25) NOT NULL, 
Tax char(25) NULL, 
total char(25) NULL,
Constraint EmployeeFK FOREIGN KEY(EmployeeID) REFERENCES SALE(SaleID),
Constraint SALEFK FOREIGN KEY(SaleID) REFERENCES Item(ItemID),

);


CREATE TABLE SALE_ITEM (
SaleID Integer NOT NULL PRIMARY KEY, 
SaleItemID Integer NOT NULL, 
ItemID Integer NOT NULL, 
ItemPrice char(25),
Constraint ItemFK FOREIGN KEY(ItemID) REFERENCES SALE_ITEM(SaleID)
);

INSERT INTO CUSTOMER
    (CustomerID)
    VALUES(1);

INSERT INTO EMPLOYEE
    (EmployeeID)
    VALUES(1);

INSERT INTO VENDOR
    (VendorID)
    VALUES(1);

INSERT INTO ITEM
    (ItemID)
    VALUES(1);


INSERT INTO SALE
    (SaleID)
    VALUES(1);





