create database friends

use friends

create schema list authorization dbo 

create table list.dados
(
dados_CD	int			identity(1,1)	primary key,
dados_NM	varchar(50)	NOT NULL,
dados_SNM	varchar(50) not null,
dados_email	varchar(50),
)
go

drop table list.dados

insert into list.dados 
values
('Constant','Welles', 'Constantin.Welles@ANHINGA.COM'),
('Harry','Pacino','HPacino@ani.com'),
('Manisha','Taylor','MTaylor@auklet.com'),
('Harrison','Sutherla','Harrison.Sutherland@GODWIT.COM'),
('Matthias','MacGraw','Matthias.MacGraw@GOLDENEYE.COM'),
('Mark','Hannah','MHannah@grebe.com'),
('Matthias','Cruise','MCruise@grosbeak.com'),
('Meenaksh','Mason','Meenakshi.Mason@JACANA.COM'),
('Christia','Cage','Christian.Cage@KINGLET.COM'),
('Gerald','Martin','GMartin@scoter.com'),
('Guillaum','Edwards','GEdwards@shrike.com'),
('Maurice','Mahoney','Maurice.Mahoney@SNIPE.COM'),
('Maurice','Hasan','Maurice.Hasan@STILT.COM'),
('Diana','Sen','DSen@tattler.com'),
('Maurice ','Daltrey','MDaltrey@teal.com'),
('Elizabet','Brown','Elizabeth.Brown@THRASHER.COM'),
('Maximili','Henner','Maximilian.Henner@DUNLIN.COM'),
('Sam','Spielber','SSpielberg@gadwall.com'),
('Sachin ','Neeson','SNeeson@gallinule.com'),
('Sivaji  ','Landis','Sivaji.Landis@GOLDENEYE.COM'),
('Mammutti','Pacino','Mammutti.Pacino@GREBE.COM'),
('Elias','Fawcett','EFawcett@jacana.com'),
('Ishwarya','Roberts','IRoberts@lapwing.com'),
('Gustav ','Steenbur','Gustav.Steenburgen@PINTAIL.COM'),
('Markus','Rampling','Markus.Rampling@PUFFIN.COM'),
('Gomer  ','Slater',' GSlater@pyrrhuloxia.com'),
('Divine','Aykroyd','DAykroyd@redstart.com'),
('Dieter','Matthau','Dieter.Matthau@VERDIN.COM'),
('Divine','Sheen','  Divine.Sheen@COWBIRD.COM'),
('Fernando','Grodin','FGrodin@creeper.com'),
('Frederic','Romero',' FRomero@curlew.com'),
('Goldie','Montand','Goldie.Montand@DIPPER.COM'),
('Sidney','Capshaw ','Sidney.Capshaw@DUNLIN.COM'),
('Fredwina','Lyon ','FLyon@flicker.com'),
('Eddie','Boyer','EBoyer@gallinule.com'),
('Eddie','Stern','Eddie.Stern@GODWIT.COM'),
('Ernest','Weaver','Ernest.Weaver@GROSBEAK.COM'),
('Diana','lorentz','dlor@limpkin.com'),
('Stephen','King','sking@merganser.com'),
('Alexande','Hunold','AHun@MOORHEN.COM'),
('Hema','Voight','Hema.Voight@PHALAROPE.COM'),
('Neena','Kochhar','nkochh@pipit.com'),
('Nancy','green','berngreenb@plover.com');

select * from list.dados

