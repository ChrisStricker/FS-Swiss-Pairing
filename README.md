# Tournament, Swiss Pairings

This project simulates a swiss pairings tournament system.  It uses a PostgreSQL database for storage.

##Files
* tournament.py
* tournament.sql
* tournament_test.py

##To run this application
1. Download the three files listed above.
2. Using psql in PostgreSQL, run \i tournament.sql to initialize the tables and view.
3. Run the test in python: python tournament_test.py.

If everything is set up correctly, you should see this output:
1. countPlayers() returns 0 after initial deletePlayers() execution.
2. countPlayers() returns 1 after one player is registered.
3. countPlayers() returns 2 after two players are registered.
4. countPlayers() returns zero after registered players are deleted.
5. Player records successfully deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After match deletion, player standings are properly reset.
9. Matches are properly deleted.
10. After one match, players with one win are properly paired.
Success!  All tests pass!
