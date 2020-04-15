create table Author
    (authorName     varchar(16),
    birthDate       varchar(16),
    city            varchar(16),
    province        varchar(16),
    Country         varchar(16),
    primary key (authorName)
    );

create table Customer
    (Email          varchar(30),
    custName        varchar(16),
    city            varchar(16),
    phone           varchar(16),
    custAddress     varchar(16),
    country         varchar(16),
    province        varchar(16),
    isAdmin         boolean,
    pwd             varchar(16);
    primary key (Email)
    );

create table Publisher
    (publishName    varchar(16),
    pubAddress      varchar(16),
    phone           varchar(16),
    BankAccount     Decimal(5, 2),
    primary key (publishName)
    );

create table Book
    (ISBN           varchar(13),
    title           varchar(13),
    year            numeric(4,0),
    genre           varchar(16),
    pageNumber      numeric(4,0),
    Price           decimal(6,2),
    primary key (ISBN)
    );

create table Warehouse
    (ID             varchar(16),
    phone           varchar(16),
    wareAddress     varchar(16),
    primary key (ID)
    );

create table CheckOut
    (ID             varchar(16),
    checkOutDate    DATE,
    primary key (ID)
    );

create table writtenBy
    (authorName     varchar(16),
    birthDate       varchar(16),
    ISBN            varchar(13),
    primary key (authorName, birthDate, ISBN),
    foreign key (authorName) references Author,
    foreign key (birthDate) references Author,
    foreign key (ISBN) references Book
        on delete cascade
    );

create table publishBy
    (publishName     varchar(16),
    ISBN             varchar(13),
    primary key (publishName, ISBN),
    foreign key (publishName) references Publisher,
    foreign key (ISBN) references Book
        on delete cascade
    );

create table stocks
    (ID              varchar(16),
    ISBN             varchar(13),
    numbers          numeric(4, 0),
    primary key (ID, ISBN),
    foreign key (ID) references warehouse,
    foreign key (ISBN) references Book
        on delete cascade
    );

create table contains
    (ID              varchar(16),
    ISBN             varchar(13),
    numbers          numeric(4, 0),
    primary key (ID, ISBN),
    foreign key (ID) references CheckOut,
    foreign key (ISBN) references Book
    );


create table checkOutOrders
    (ID              varchar(16),
    Email            varchar(30),
    primary key (ID, Email),
    foreign key (ID) references CheckOut
        on delete cascade,
    foreign key (Email) references Customer
    );


