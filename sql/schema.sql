-- Theatre Table
CREATE TABLE Theatre (
    TheatreId INT PRIMARY KEY,
    TheatreName VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL
);

-- Screen Table
CREATE TABLE Screen (
    ScreenId INT PRIMARY KEY,
    TheatreId INT NOT NULL,
    ScreenName VARCHAR(50) NOT NULL,
    FOREIGN KEY (TheatreId) REFERENCES Theatre(TheatreId)
);

-- Movie Table
CREATE TABLE Movie (
    MovieId INT PRIMARY KEY,
    MovieTitle VARCHAR(150) NOT NULL,
    DurationMinutes INT NOT NULL
);

-- Language Table
CREATE TABLE Language (
    LanguageId INT PRIMARY KEY,
    LanguageName VARCHAR(50) NOT NULL
);

-- Show Table
CREATE TABLE `Show` (
    ShowId INT PRIMARY KEY,
    MovieId INT NOT NULL,
    ScreenId INT NOT NULL,
    LanguageId INT NOT NULL,
    ShowDate DATE NOT NULL,
    ShowTime TIME NOT NULL,
    FOREIGN KEY (MovieId) REFERENCES Movie(MovieId),
    FOREIGN KEY (ScreenId) REFERENCES Screen(ScreenId),
    FOREIGN KEY (LanguageId) REFERENCES Language(LanguageId),
    UNIQUE (ScreenId, ShowDate, ShowTime)
);
