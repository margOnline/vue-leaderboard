insert into gamers
  (firstname, lastname, email)
values
  ('Milo', 'Canning','milo@gmail.com'),
  ('Charlotte', 'Kulig', 'charlotte@gmail.com'),
  ('James', 'Hartnett', 'james@gmail.com'),
  ('George', 'Verville','george@gmail.com');

insert into tournaments
  (name, slug, logo, start_date, end_date, season_position)
values
  ('Australian Open', 'australian-open', 'aussie.png', 'January 15', 'January 29', '1'),
  ('French Open', 'french-open', 'french.png', 'May 26', 'June 2', '2'),
  ('Wimbledon', 'wimbledon', 'wimbledon.png', 'July 1', 'July 14', '3'),
  ('US Open', 'us-open', 'usopen.jpg', 'August 26', 'September 8', '4');

insert into players
  (firstName, lastName, country, dob, gender)
values
  ('Andy', 'Murray', 'Scotland', '14011989', 'm'),
  ('Jack', 'Draper', 'England', '02062002', 'm'),
  ('Taylor', 'Fritz', 'United States of America', '07121997', 'm'),
  ('Tommy', 'Paul', 'United States of America', '21091998', 'm'),
  ('Emma', 'Raducanu', 'England', '14011989', 'f'),
  ('Iga', 'Swiatek', 'Poland', '31052001', 'f'),
  ('Aryna', 'Sabalenka', 'Belarus', '05051998', 'f'),
  ('Coco', 'Gauff', 'United States of America', '13032004', 'f');
  