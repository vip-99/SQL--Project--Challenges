1. What are the names of the players whose salary is greater than 100,000?

SELECT  player_id,player_name,salary

FROM Players 

WHERE salary>100000 

ORDER BY player_id ASC;





2. What is the team name of the player with player_id = 3?

SELECT P.player_id,T.team_name

FROM Teams T

JOIN Players P 

ON T.team_id=P.team_id

WHERE player_id = 3;





3. What is the total number of players in each team?

SELECT T.team_id,T.team_name,COUNT(player_id) AS no_of_players

FROM Teams T 

JOIN Players P

ON T.team_id= P.team_id

GROUP BY T.team_id,team_name 

ORDER BY T.team_id ASC;




4. What is the team name and captain name of the team with team_id = 2?

SELECT T.captain_id,T.team_name,P.player_name AS captain_name 

FROM Teams T

JOIN Players P

ON T.team_id= P.team_id

WHERE T.team_id=2;










5. What are the player names and their roles in the team with team_id = 1?

SELECT team_id,player_name,role 

FROM Players

WHERE team_id=1;







6. What are the team names and the number of matches they have won?

SELECT T.team_id,T.team_name,COUNT(winner_id) AS num_of_matches_won

FROM Teams T

JOIN Matches M

ON T.team_id=M.winner_id

GROUP BY T.team_id,team_name

ORDER BY num_of_matches_won DESC;



7. What is the average salary of players in the teams with country 'USA'?

SELECT T.country,Round(AVG(salary),1) AS avg_salary

FROM Players P 

JOIN Teams T  

ON P.team_id=T.team_id

WHERE T.country ='USA'

GROUP BY T.country;




8. Which team won the most matches?

SELECT T.team_id,T.team_name,COUNT(M.winner_id) AS won 

FROM Teams T

JOIN Matches M

ON T.team_id=M.winner_id

GROUP BY T.team_id,M.winner_id

ORDER BY won DESC

LIMIT 1;



9. What are the team names and the number of players in each team whose salary is greater than 100,000?

SEECT  T.team_name,COUNT(P.player_id) AS num_of_players  

FROM Teams T 

JOIN Players P

ON T.team_id= P.team_id

WHERE salary > 100000

GROUP BY team_name

ORDER BY num_of_players DESC;





10. What is the date and the score of the match with match_id = 3?

SELECT match_date,
       score_team1,
       score_team2,
       (score_team1+score_team2) AS match_score

FROM  Matches 

WHERE match_id = 3;



