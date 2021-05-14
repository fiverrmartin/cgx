
/*CREATE or replace FUNCTION clean_tables() RETURNS void AS $$
declare
  l_stmt text;
begin
  select 'truncate ' || string_agg(format('%I.%I', schemaname, tablename) , ',')
    into l_stmt
  from pg_tables
  where schemaname in ('public');

  execute l_stmt || ' cascade';
end;
$$ LANGUAGE plpgsql;
select clean_tables();

-- reset sekvenci

CREATE or replace FUNCTION restart_sequences() RETURNS void AS $$
DECLARE
i TEXT;
BEGIN
 FOR i IN (SELECT column_default FROM information_schema.columns WHERE column_default SIMILAR TO 'nextval%')
  LOOP
         EXECUTE 'ALTER SEQUENCE'||' ' || substring(substring(i from '''[a-z_]*')from '[a-z_]+') || ' '||' RESTART 1;';
  END LOOP;
END $$ LANGUAGE plpgsql;
select restart_sequences();
*/

insert into game (name, description, status, nft_support, free_to_play, image) values ('Zaam-Dox', 'mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam', 'presale', false, true, 'http://dummyimage.com/201x100.png/ff4444/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Cardify', 'luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet', 'presale', false, true, 'http://dummyimage.com/100x100.png/cc0000/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Y-find', 'sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', 'presale', true, false, 'http://dummyimage.com/206x100.png/cc0000/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Latlux', 'justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', 'presale', true, false, 'http://dummyimage.com/190x100.png/cc0000/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Tampflex', 'at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar', 'cancelled', false, false, 'http://dummyimage.com/176x100.png/cc0000/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Viva', 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in', 'development', true, true, 'http://dummyimage.com/150x100.png/ff4444/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Sonsing', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis', 'presale', true, true, 'http://dummyimage.com/114x100.png/ff4444/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Home Ing', 'phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer', 'cancelled', true, false, 'http://dummyimage.com/248x100.png/5fa2dd/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Prodder', 'ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum', 'beta', true, true, 'http://dummyimage.com/230x100.png/cc0000/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Toughjoyfax', 'nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut', 'cancelled', true, false, 'http://dummyimage.com/223x100.png/dddddd/000000');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Asoka', 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis', 'development', true, false, 'http://dummyimage.com/172x100.png/dddddd/000000');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Regrant', 'tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue', 'cancelled', true, false, 'http://dummyimage.com/203x100.png/5fa2dd/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Veribet', 'ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', 'development', true, false, 'http://dummyimage.com/222x100.png/ff4444/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Tres-Zap', 'eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio', 'presale', false, false, 'http://dummyimage.com/186x100.png/ff4444/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Greenlam', 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', 'cancelled', false, true, 'http://dummyimage.com/186x100.png/ff4444/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Daltfresh', 'diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien', 'cancelled', false, false, 'http://dummyimage.com/144x100.png/5fa2dd/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Zamit', 'dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci', 'alpha', true, false, 'http://dummyimage.com/213x100.png/5fa2dd/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Opela', 'at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat', 'alpha', false, false, 'http://dummyimage.com/195x100.png/5fa2dd/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Lotstring', 'sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh', 'development', true, false, 'http://dummyimage.com/190x100.png/5fa2dd/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Ventosanzap', 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus', 'alpha', false, true, 'http://dummyimage.com/145x100.png/dddddd/000000');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Alphazap', 'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet', 'cancelled', false, false, 'http://dummyimage.com/143x100.png/dddddd/000000');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Cookley', 'primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu', 'live', false, false, 'http://dummyimage.com/190x100.png/cc0000/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Tresom', 'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi', 'cancelled', false, false, 'http://dummyimage.com/136x100.png/ff4444/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('It', 'lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 'beta', false, true, 'http://dummyimage.com/207x100.png/5fa2dd/ffffff');
insert into game (name, description, status, nft_support, free_to_play, image) values ('Mat Lam Tam', 'varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 'live', true, false, 'http://dummyimage.com/180x100.png/5fa2dd/ffffff');



insert into blockchain(name) values ('Bitcoin');
insert into blockchain(name) values ('Etherum');
insert into blockchain(name) values ('Dogecoin');
insert into blockchain(name) values ('Matic');
insert into blockchain(name) values ('Hive');
insert into blockchain(name) values ('Eos');


insert into genre(name) values ('Action');
insert into genre(name) values ('Fighting');
insert into genre(name) values ('Card');
insert into genre(name) values ('PVP');
insert into genre(name) values ('Strategy');
insert into genre(name) values ('Sports');
insert into genre(name) values ('MMO');
insert into genre(name) values ('Party');


insert into device(name) values ('IOS');
insert into device(name) values ('Andriod');
insert into device(name) values ('Web');

insert into play_to_earn(name) values ('Crypto');
insert into play_to_earn(name) values ('NTF');










