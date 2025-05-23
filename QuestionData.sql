CREATE TABLE questions(
  question_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  question_text TEXT NOT NULL
);

CREATE TABLE categories(
  category_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  category_text TEXT NOT NULL
);

CREATE TABLE categoryQuestionBank(
  question_id INT,
  category_id INT
);

ALTER TABLE `categoryQuestionBank` ADD UNIQUE `bankQuestion`(`question_id`, `category_id`)


INSERT INTO questions (question_id, question_text) VALUES
(1, 'Where did you grow up?'),
(2, 'What’s your favorite childhood memory?'),
(3, 'Did you have a favorite toy or game as a kid?'),
(4, 'What’s a tradition your family had that you loved?'),
(5, 'What’s the best gift you’ve ever received?'),

(6, 'What does success mean to you?'),
(7, 'What do you value most in a friendship?'),
(8, 'What motivates you every day?'),
(9, 'Have you ever had a life-changing experience?'),
(10, 'What’s one principle you try to live by?'),

(11, 'Are you more introverted or extroverted?'),
(12, 'What’s your love language?'),
(13, 'Do you prefer mornings or nights?'),
(14, 'What’s your zodiac sign, and do you relate to it?'),
(15, 'Do you like surprises?'),

(16, 'What’s your favorite hobby?'),
(17, 'What’s a skill you wish you had?'),
(18, 'Do you play any instruments?'),
(19, 'What’s a creative outlet you enjoy?'),
(20, 'How do you usually spend your weekends?'),

(21, 'What’s your comfort food?'),
(22, 'Do you enjoy cooking or baking?'),
(23, 'What’s your go-to coffee or tea order?'),
(24, 'Have you ever tried a food you hated as a kid but love now?'),
(25, 'What’s the weirdest food you’ve ever tried?'),

(26, 'What’s the best place you’ve ever traveled to?'),
(27, 'Where’s your dream vacation?'),
(28, 'Do you prefer mountains or beaches?'),
(29, 'Would you rather explore a new city or stay in nature?'),
(30, 'Have you ever traveled alone?'),

(31, 'What’s your all-time favorite movie?'),
(32, 'What TV show are you currently watching?'),
(33, 'Who’s your favorite musician or band?'),
(34, 'Do you listen to podcasts? Any favorites?'),
(35, 'What book has impacted you the most?'),

(36, 'What makes someone a good friend?'),
(37, 'Do you believe in soulmates?'),
(38, 'Have you ever had a mentor?'),
(39, 'What’s the best advice someone has given you?'),
(40, 'What’s a quality you admire in others?'),

(41, 'What did you want to be when you were a kid?'),
(42, 'What’s your dream job now?'),
(43, 'What’s a big goal you''re working toward?'),
(44, 'Have you ever changed careers?'),
(45, 'Do you prefer working in a team or alone?'),

(46, 'What’s something you’ve overcome that you''re proud of?'),
(47, 'How do you handle failure?'),
(48, 'What’s a mistake that taught you something valuable?'),
(49, 'How do you define personal growth?'),
(50, 'What’s one thing you’re currently working on improving?'),

(51, 'If you could have any superpower, what would it be?'),
(52, 'What’s your guilty pleasure?'),
(53, 'Do you believe in luck?'),
(54, 'What’s a weird talent you have?'),
(55, 'What’s something people often misunderstand about you?'),

(56, 'What app do you use the most?'),
(57, 'Are you more of a texter or caller?'),
(58, 'Do you like social media?'),
(59, 'What’s your favorite meme?'),
(60, 'Have you ever taken a break from technology?'),

(61, 'Coffee or tea?'),
(62, 'Netflix or YouTube?'),
(63, 'Sweet or savory?'),
(64, 'Books or movies?'),
(65, 'Cats or dogs?'),

(66, 'If you won the lottery, what’s the first thing you’d do?'),
(67, 'If you could live anywhere, where would it be?'),
(68, 'If you could meet any historical figure, who would it be?'),
(69, 'If you had to eat one meal for the rest of your life, what would it be?'),
(70, 'If time travel was real, what era would you visit?'),

(71, 'What’s the first thing you do in the morning?'),
(72, 'Do you have any daily rituals?'),
(73, 'What’s your favorite way to relax?'),
(74, 'What helps you recharge after a long day?'),
(75, 'Are you more of a planner or go-with-the-flow type?'),

(76, 'Do you prefer big parties or small gatherings?'),
(77, 'Who’s someone you can always count on?'),
(78, 'Do you enjoy meeting new people?'),
(79, 'What’s your ideal weekend plan?'),
(80, 'How do you maintain long-distance friendships?'),

(81, 'What do you fear most?'),
(82, 'What brings you peace?'),
(83, 'What does love mean to you?'),
(84, 'Have you ever had your heart broken?'),
(85, 'What do you want your legacy to be?'),

(86, 'Do you believe everything happens for a reason?'),
(87, 'What’s the purpose of life, in your opinion?'),
(88, 'Can people truly change?'),
(89, 'What do you think happens after we die?'),
(90, 'What’s something you’ll never understand?'),

(91, 'How do you express yourself creatively?'),
(92, 'What’s your go-to outfit that makes you feel confident?'),
(93, 'Do you journal, write, or create art?'),
(94, 'What song feels like your life anthem?'),
(95, 'What’s your aesthetic or style?'),

(96, 'Where do you see yourself in 5 years?'),
(97, 'What are you most looking forward to this year?'),
(98, 'What’s one thing on your bucket list?'),
(99, 'What’s a habit you’re trying to build?'),
(100, 'What’s one dream you haven’t shared with anyone yet?');

INSERT INTO categoryQuestionBank (question_id, category_id) VALUES
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1),
(6, 2), (7, 2), (8, 2), (9, 2), (10, 2),
(11, 3), (12, 3), (13, 3), (14, 3), (15, 3),
(16, 4), (17, 4), (18, 4), (19, 4), (20, 4),
(21, 5), (22, 5), (23, 5), (24, 5), (25, 5),
(26, 6), (27, 6), (28, 6), (29, 6), (30, 6),
(31, 7), (32, 7), (33, 7), (34, 7), (35, 7),
(36, 8), (37, 8), (38, 8), (39, 8), (40, 8),
(41, 9), (42, 9), (43, 9), (44, 9), (45, 9),
(46, 10), (47, 10), (48, 10), (49, 10), (50, 10),
(51, 11), (52, 11), (53, 11), (54, 11), (55, 11),
(56, 12), (57, 12), (58, 12), (59, 12), (60, 12),
(61, 13), (62, 13), (63, 13), (64, 13), (65, 13),
(66, 14), (67, 14), (68, 14), (69, 14), (70, 14),
(71, 15), (72, 15), (73, 15), (74, 15), (75, 15),
(76, 16), (77, 16), (78, 16), (79, 16), (80, 16),
(81, 17), (82, 17), (83, 17), (84, 17), (85, 17),
(86, 18), (87, 18), (88, 18), (89, 18), (90, 18),
(91, 19), (92, 19), (93, 19), (94, 19), (95, 19),
(96, 20), (97, 20), (98, 20), (99, 20), (100, 20);

INSERT INTO categories (category_id, category_text) VALUES
(1, 'Personal Background'),
(2, 'Life & Values'),
(3, 'Personality & Preferences'),
(4, 'Hobbies & Interests'),
(5, 'Food & Drink'),
(6, 'Travel & Adventure'),
(7, 'Pop Culture'),
(8, 'Relationships & People'),
(9, 'Career & Ambitions'),
(10, 'Reflection & Growth'),
(11, 'Fun & Random'),
(12, 'Tech & Digital Life'),
(13, 'This or That'),
(14, 'Hypotheticals'),
(15, 'Daily Life'),
(16, 'Social Life'),
(17, 'Deep Dives'),
(18, 'Philosophical'),
(19, 'Self-Expression'),
(20, 'Looking Forward');