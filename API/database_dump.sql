DROP TABLE IF EXISTS "item";

CREATE TABLE "item" (
  id SERIAL PRIMARY KEY,
  date varchar(255),
  name TEXT default NULL,
  amount integer NULL,
  distance integer NULL
);

INSERT INTO item (date,name,amount,distance)
VALUES
  ('Mar 5, 2019','Etiam bibendum fermentum metus. Aenean sed pede',95,202.1),
  ('Jul 21, 2013','Mauris ut quam vel sapien imperdiet',96,114.1),
  ('Apr 28, 2012','ridiculus mus. Donec dignissim magna a tortor. Nunc',57,189.1),
  ('Jun 23, 2008','elit. Etiam laoreet, libero et tristique',92,214.1),
  ('Feb 13, 2023','Sed nunc est,',77,249.1),
  ('Mar 7, 2023','justo',24,116.1),
  ('Oct 24, 2014','pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus',26,58.1),
  ('Feb 13, 2010','erat neque non quam. Pellentesque habitant',15,115.1),
  ('Oct 7, 2012','rhoncus. Nullam velit dui, semper',39,282.1),
  ('Dec 27, 2020','Cras vulputate velit eu',41,226.1);
INSERT INTO item (date,name,amount,distance)
VALUES
  ('Dec 20, 2006','erat volutpat. Nulla facilisis. Suspendisse',91,235.1),
  ('Oct 23, 2017','elit, pharetra ut, pharetra sed,',61,125.1),
  ('Aug 3, 2013','neque vitae semper egestas, urna justo faucibus lectus,',77,2.1),
  ('Jan 24, 2013','ipsum dolor sit amet,',97,98.1),
  ('Jun 24, 2018','eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam',67,240.1),
  ('Nov 28, 2008','Praesent eu nulla at sem molestie sodales. Mauris',16,143.1),
  ('Feb 15, 2015','velit eget laoreet posuere, enim nisl elementum purus,',1,177.1),
  ('Apr 15, 2017','augue, eu tempor erat neque non quam. Pellentesque',37,68.1),
  ('Jul 21, 2006','mi felis, adipiscing fringilla, porttitor vulputate, posuere',33,64.1),
  ('Jul 13, 2011','ipsum porta elit, a feugiat tellus',14,295.1);
INSERT INTO item (date,name,amount,distance)
VALUES
  ('Feb 7, 2022','lobortis risus. In',74,148.1),
  ('Apr 29, 2007','Morbi sit amet massa. Quisque porttitor eros nec tellus.',7,214.1),
  ('Aug 6, 2015','pede. Nunc sed orci lobortis augue scelerisque mollis.',99,169.1),
  ('Nov 12, 2015','felis orci, adipiscing non, luctus sit amet, faucibus',2,199.1),
  ('Mar 5, 2002','Cum',97,50.1),
  ('Dec 6, 2016','ut lacus.',30,175.1),
  ('Jan 29, 2006','est, vitae sodales nisi magna sed',17,286.1),
  ('Jul 4, 2014','aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus',65,110.1),
  ('Jun 10, 2004','nunc id enim.',18,153.1),
  ('Dec 1, 2018','purus. Maecenas libero est, congue a, aliquet vel, vulputate',24,244.1);
INSERT INTO item (date,name,amount,distance)
VALUES
  ('Oct 24, 2011','eu, ultrices sit',89,69.1),
  ('May 27, 2010','Nunc',7,283.1),
  ('Jul 21, 2017','dolor elit, pellentesque a, facilisis',38,275.1),
  ('Sep 12, 2022','dolor.',79,198.1),
  ('Apr 15, 2013','metus. In lorem.',22,149.1),
  ('Jan 3, 2010','mattis.',84,83.1),
  ('Aug 29, 2011','Nunc ac sem ut dolor dapibus',61,27.1),
  ('Oct 11, 2002','vitae mauris sit amet lorem semper auctor.',60,126.1),
  ('Apr 19, 2019','sem, vitae aliquam eros turpis non enim. Mauris',53,255.1),
  ('Mar 16, 2012','eu enim. Etiam imperdiet dictum',2,62.1);
INSERT INTO item (date,name,amount,distance)
VALUES
  ('May 1, 2019','malesuada. Integer id',13,292.1),
  ('Dec 27, 2016','et malesuada fames ac turpis',21,42.1),
  ('Apr 19, 2014','est. Nunc laoreet lectus quis massa. Mauris',3,39.1),
  ('Apr 5, 2002','enim, sit amet ornare',67,50.1),
  ('Dec 21, 2022','a purus. Duis elementum, dui quis accumsan convallis, ante',98,55.1),
  ('Sep 1, 2001','vel, convallis',8,123.1),
  ('Jan 28, 2005','massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,',14,264.1),
  ('Jan 1, 2019','semper rutrum. Fusce dolor quam, elementum at,',63,27.1),
  ('May 31, 2004','eu, ultrices',57,152.1),
  ('Nov 16, 2019','Nam tempor diam dictum',32,264.1);
INSERT INTO item (date,name,amount,distance)
VALUES
  ('Dec 16, 2019','dictum augue malesuada malesuada.',98,229.1),
  ('Jan 5, 2017','convallis dolor. Quisque tincidunt pede',88,232.1),
  ('Oct 23, 2001','velit eu sem. Pellentesque ut ipsum ac mi eleifend',12,121.1),
  ('Nov 1, 2003','Vivamus euismod urna. Nullam lobortis quam',13,182.1),
  ('Feb 4, 2021','nibh lacinia orci,',30,177.1),
  ('Jun 12, 2005','tellus. Suspendisse sed dolor. Fusce mi lorem,',26,196.1),
  ('Mar 20, 2021','Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat',91,164.1),
  ('Sep 17, 2010','Phasellus at augue id ante',35,227.1),
  ('Sep 18, 2010','nonummy ut, molestie',10,160.1),
  ('Jul 21, 2017','Curabitur ut odio vel',26,216.1);
INSERT INTO item (date,name,amount,distance)
VALUES
  ('Jan 17, 2008','libero. Proin sed',23,134.1),
  ('Dec 7, 2018','in molestie tortor nibh sit amet orci. Ut',56,223.1),
  ('Apr 12, 2006','felis orci, adipiscing non,',46,276.1),
  ('Jan 14, 2015','sem egestas blandit. Nam nulla magna,',77,178.1),
  ('Oct 7, 2003','pede, ultrices',22,266.1),
  ('Nov 15, 2021','aliquet nec, imperdiet',21,211.1),
  ('Dec 20, 2011','ut aliquam iaculis, lacus pede sagittis augue,',37,223.1),
  ('Aug 20, 2016','lacus. Etiam bibendum fermentum metus. Aenean sed',11,45.1),
  ('May 24, 2003','eros turpis non enim. Mauris quis',48,290.1),
  ('Jul 14, 2009','dolor. Fusce feugiat. Lorem ipsum dolor sit',72,132.1);
INSERT INTO item (date,name,amount,distance)
VALUES
  ('Mar 23, 2022','ultrices iaculis',31,14.1),
  ('Nov 25, 2015','In mi pede,',10,69.1),
  ('Dec 1, 2020','faucibus leo, in lobortis tellus justo sit amet nulla. Donec',27,200.1),
  ('Jul 26, 2020','consequat auctor,',30,242.1),
  ('Dec 22, 2020','non nisi. Aenean eget metus.',19,129.1),
  ('Oct 13, 2015','id, erat. Etiam',25,115.1),
  ('Sep 17, 2009','non arcu. Vivamus sit amet risus. Donec',50,184.1),
  ('Jul 5, 2009','at pretium',42,271.1),
  ('Oct 28, 2020','risus, at fringilla purus mauris a nunc. In',58,268.1),
  ('Mar 27, 2018','et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus',32,261.1);
INSERT INTO item (date,name,amount,distance)
VALUES
  ('Jun 22, 2012','ut, nulla. Cras eu',15,298.1),
  ('Apr 19, 2004','Phasellus libero mauris, aliquam eu, accumsan sed, facilisis',56,258.1),
  ('Mar 18, 2009','vestibulum massa rutrum magna. Cras',12,65.1),
  ('Jun 8, 2014','ut dolor dapibus',23,174.1),
  ('Jan 10, 2004','ligula eu enim. Etiam imperdiet',13,149.1),
  ('Jul 7, 2012','Sed neque. Sed eget lacus.',15,271.1),
  ('Jan 21, 2014','Aenean sed pede nec',73,82.1),
  ('Jun 12, 2012','Duis elementum, dui quis accumsan convallis, ante lectus',42,286.1),
  ('Apr 15, 2007','In ornare sagittis',9,278.1),
  ('Jul 24, 2009','sociosqu ad litora torquent per conubia nostra, per',86,84.1);
INSERT INTO item (date,name,amount,distance)
VALUES
  ('Jul 9, 2005','erat. Vivamus nisi. Mauris nulla.',74,14.1),
  ('Nov 19, 2007','dignissim magna a tortor.',45,113.1),
  ('Jan 21, 2010','montes, nascetur ridiculus mus. Aenean eget',17,54.1),
  ('Mar 29, 2006','eu tempor erat neque non quam. Pellentesque habitant morbi',6,115.1),
  ('Sep 17, 2003','rutrum lorem ac risus. Morbi metus.',58,228.1),
  ('Feb 14, 2019','vitae, aliquet nec, imperdiet nec, leo. Morbi neque',7,47.1),
  ('Aug 20, 2019','lectus justo eu arcu. Morbi sit amet',95,87.1),
  ('Sep 30, 2016','ullamcorper eu, euismod',64,15.1),
  ('Nov 25, 2019','diam lorem, auctor quis, tristique ac, eleifend vitae,',74,145.1),
  ('Apr 8, 2014','fermentum risus, at fringilla purus mauris',44,122.1);
