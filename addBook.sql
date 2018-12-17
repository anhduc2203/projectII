
INSERT INTO dbo.BOOK
(
    BookCode,
    Name,
    Price,
    Author,
    NXB,
    BookCategory,
    BookDesciption,
    BookImage
)
VALUES
(   '',  -- BookCode - varchar(10)
    N'Modern Java EE Design Patterns', -- Name - nvarchar(200)
    10.0, -- Price - float
    N'Markus Eisele', -- Author - nvarchar(50)
    N'NXB BKHN', -- NXB - nvarchar(200)
    N'Programming', -- BookCategory - nvarchar(50)
    'With the ascent of DevOps, microservices, containers, and cloud-based development platforms, the gap between state-of-the-art solutions and the technology that enterprises typically support has greatly increased. But as Markus Eisele explains in this O’Reilly report, some enterprises are now looking to bridge that gap by building microservice-based architectures on top of Java EE.',  -- BookDesciption - text
    'E:\tailieuoF\MON HOC\DO AN II\DA2\projectII\anh\image2.png'   -- BookImage - text
    )

INSERT INTO dbo.BOOK
(
    BookCode,
    Name,
    Price,
    Author,
    NXB,
    BookCategory,
    BookDesciption,
    BookImage
)
VALUES
(   '',  -- BookCode - varchar(10)
    N'A Whirlwind Tour of Python', -- Name - nvarchar(200)
    10.0, -- Price - float
    N'Jake VanderPlas', -- Author - nvarchar(50)
    N'NXB BKHN', -- NXB - nvarchar(200)
    N'Programming', -- BookCategory - nvarchar(50)
    'To tap into the power of Python''s open data science stack—including NumPy, Pandas, Matplotlib, Scikit-learn, and other tools—you first need to understand the syntax, semantics, and patterns of the Python language. This report provides a brief yet comprehensive introduction to Python for engineers, researchers, and data scientists who are already familiar with another programming language.',  -- BookDesciption - text
    'E:\tailieuoF\MON HOC\DO AN II\DA2\projectII\anh\image3.png'   -- BookImage - text
    )



INSERT INTO dbo.BOOK
(
    BookCode,
    Name,
    Price,
    Author,
    NXB,
    BookCategory,
    BookDesciption,
    BookImage
)
VALUES
(   '',  -- BookCode - varchar(10)
    N'20 Python Libraries You Aren''t Using (But Should)', -- Name - nvarchar(200)
    10.0, -- Price - float
    N'Caleb Hattingh', -- Author - nvarchar(50)
    N'NXB KBHN', -- NXB - nvarchar(200)
    N'Programming', -- BookCategory - nvarchar(50)
    'The Python ecosystem is vast and far-reaching in both scope and depth. Starting out in this crazy, open-source forest is daunting, and even with years of experience, it still requires continual effort to keep up-to-date with the best libraries and techniques. This report helps you explore some of the lesser known Python libraries and tools, including third-party modules and several extremely useful tools in the standard library that deserve more attention.',  -- BookDesciption - text
    'E:\tailieuoF\MON HOC\DO AN II\DA2\projectII\anh\image4.png'   -- BookImage - text
    )


INSERT INTO dbo.BOOK
(
    BookCode,
    Name,
    Price,
    Author,
    NXB,
    BookCategory,
    BookDesciption,
    BookImage
)
VALUES
(   '',  -- BookCode - varchar(10)
    N'Practical C++ Metaprogramming', -- Name - nvarchar(200)
    10.0, -- Price - float
    N'Joel Falcou, Edouard Alligand', -- Author - nvarchar(50)
    N'NXB BKHN', -- NXB - nvarchar(200)
    N'Programming', -- BookCategory - nvarchar(50)
    'To say that C++ programmers embrace metaprogramming is a real stretch. Outright rejection is probably more accurate. And yet, C++ template metaprogramming is ideal for performing automatic compile-time optimization. With this example-driven ebook, you’ll learn how improved metaprogramming techniques in C++11 and C++14 can help you avoid a lot of mistakes and tedious work by making the compiler work for you.',  -- BookDesciption - text
    'E:\tailieuoF\MON HOC\DO AN II\DA2\projectII\anh\image5.png'   -- BookImage - text
    )



INSERT INTO dbo.BOOK
(
    BookCode,
    Name,
    Price,
    Author,
    NXB,
    BookCategory,
    BookDesciption,
    BookImage
)
VALUES
(   '',  -- BookCode - varchar(10)
    N'RxJava for Android App Development', -- Name - nvarchar(200)
    10.0, -- Price - float
    N'K. Matt Dupree', -- Author - nvarchar(50)
    N'NXB BKHN', -- NXB - nvarchar(200)
    N'Programming', -- BookCategory - nvarchar(50)
    'RxJava is hot property among experienced Android developers these days, but this powerful library for handling asynchronous data in Android apps can be difficult to learn. In this O’Reilly report, mobile software engineer Matt Dupree introduces you to RxJava basics and then uses a real-world scenario to demonstrate how this library makes quick work of tasks that can often become messy and inflexible.',  -- BookDesciption - text
    'E:\tailieuoF\MON HOC\DO AN II\DA2\projectII\anh\image6.png'   -- BookImage - text
    )



INSERT INTO dbo.BOOK
(
    BookCode,
    Name,
    Price,
    Author,
    NXB,
    BookCategory,
    BookDesciption,
    BookImage
)
VALUES
(   '',  -- BookCode - varchar(10)
    N'Governing the IoT', -- Name - nvarchar(200)
    10.0, -- Price - float
    N'Mike Barlow', -- Author - nvarchar(50)
    N'NXB BKHN', -- NXB - nvarchar(200)
    N'Programming', -- BookCategory - nvarchar(50)
    'Soon enough, the Internet of Things will play a dominant role in the economies of countries and regions around the globe. Many players are already involved, but so far no single company, agency, or department can be held accountable if (and when) things go wrong. Simply put, today’s IoT is like Dodge City in the Old West before the U.S. Marshals arrived.',  -- BookDesciption - text
    'E:\tailieuoF\MON HOC\DO AN II\DA2\projectII\anh\image7.png'   -- BookImage - text
    )


INSERT INTO dbo.BOOK
(
    BookCode,
    Name,
    Price,
    Author,
    NXB,
    BookCategory,
    BookDesciption,
    BookImage
)
VALUES
(   '',  -- BookCode - varchar(10)
    N'Modern SVG', -- Name - nvarchar(200)
    17.0, -- Price - float
    N'Amelia Bellamy-Royds&Kurt Cagle', -- Author - nvarchar(50)
    N'NXB BKHN', -- NXB - nvarchar(200)
    N'Programming', -- BookCategory - nvarchar(50)
    'This collection of chapters from published and upcoming books in the O’Reilly Design Library shows you how to use the XML-based SVG vector image format for two-dimensional graphics that support interactivity and animation. Because SVG images and their behaviors are defined in XML text files, they can be searched, indexed, scripted, and compressed. You can create and edit SVG images with drawing software or with any text editor.',  -- BookDesciption - text
    'E:\tailieuoF\MON HOC\DO AN II\DA2\projectII\anh\image8.png'   -- BookImage - text
    )


INSERT INTO dbo.BOOK
(
    BookCode,
    Name,
    Price,
    Author,
    NXB,
    BookCategory,
    BookDesciption,
    BookImage
)
VALUES
(   '',  -- BookCode - varchar(10)
    N'Legends & Lies: The Patriots', -- Name - nvarchar(200)
    30.0, -- Price - float
    N'David Fisher', -- Author - nvarchar(50)
    N'NXB BKHN', -- NXB - nvarchar(200)
    N'Literaty', -- BookCategory - nvarchar(50)
    'The must-have companion to Bill O''Reilly''s historical docudrama Legends and Lies: The Patriots, an exciting and eye-opening look at the Revolutionary War through the lives of its leaders',  -- BookDesciption - text
    'E:\tailieuoF\MON HOC\DO AN II\DA2\projectII\anh\image9.png'   -- BookImage - text
    )




INSERT INTO dbo.BOOK
(
    BookCode,
    Name,
    Price,
    Author,
    NXB,
    BookCategory,
    BookDesciption,
    BookImage
)
VALUES
(   '',  -- BookCode - varchar(10)
    N'Killing England', -- Name - nvarchar(200)
    30.0, -- Price - float
    N'Bill O Reilly', -- Author - nvarchar(50)
    N'NXB BKHN', -- NXB - nvarchar(200)
    N'Literaty', -- BookCategory - nvarchar(50)
    'The breathtaking latest installment in Bill O Reilly and Martin Dugard s mega-bestselling Killing series transports readers to the most important era in our nation''s history, the Revolutionary War.',  -- BookDesciption - text
    'E:\tailieuoF\MON HOC\DO AN II\DA2\projectII\anh\image10.png'   -- BookImage - text
    )



INSERT INTO dbo.BOOK
(
    BookCode,
    Name,
    Price,
    Author,
    NXB,
    BookCategoryID,
    BookDesciption,
    BookImage
)
VALUES
(   '',  -- BookCode - varchar(10)
    N'Hitler''s Last Days', -- Name - nvarchar(200)
    30.0, -- Price - float
    N'Bill O Reilly', -- Author - nvarchar(50)
    N'NXB BKHN', -- NXB - nvarchar(200)
    N'Literaty', -- BookCategory - nvarchar(50)
    'By early 1945, the destruction of the German Nazi State seems certain. The Allied forces, led by American generals George S. Patton and Dwight D. Eisenhower, are gaining control of Europe, leaving German leaders scrambling. Facing defeat, Adolf Hitler flees to a secret bunker with his new wife, Eva Braun, and his beloved dog, Blondi. It is there that all three would meet their end, thus ending the Third Reich and one of the darkest chapters of history.',  -- BookDesciption - text
    'E:\tailieuoF\MON HOC\DO AN II\DA2\projectII\anh\image11.png'   -- BookImage - text
    )