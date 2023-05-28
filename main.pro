

implement main

domains
    capital = string
    country = string
    continent = string
    population = integer

predicates
    capital_of(country, capital)
    continent_of(country, continent)
    population_of(country, population)
    total_population(continent, population)

clauses
    capital_of("Russia", "Moscow").
    capital_of("USA", "Washington, D.C.").
    capital_of("China", "Beijing").
    capital_of("Germany", "Berlin").
    capital_of("France", "Paris").

    continent_of("Russia", "Europe").
    continent_of("USA", "North America").
    continent_of("China", "Asia").
    continent_of("Germany", "Europe").
    continent_of("France", "Europe").

    population_of("Russia", 144 million).
    population_of("USA", 331 million).
    population_of("China", 1444 million).
    population_of("Germany", 83 million).
    population_of("France", 67 million).

    total_population("Europe", Pop) :-
        population_of(_, Pop),
        continent_of(_, "Europe").

    total_population("North America", Pop) :-
        population_of(_, Pop),
        continent_of(_, "North America").

    total_population("Asia", Pop) :-
        population_of(_, Pop),
        continent_of(_, "Asia").

clauses
    run :-
        writeln("Enter a query:"),
        readln(Query),
        process_query(Query).

    process_query(Query) :-
        Query = capital_of(Country, Capital),
        capital_of(Country, Capital),
        writeln(Country, " capital is ", Capital).

    process_query(Query) :-
        Query = continent_of(Country, Continent),
        continent_of(Country, Continent),
        writeln(Country, " is in ", Continent).

    process_query(Query) :-
        Query = population_of(Country, Population),
        population_of(Country, Population),
        writeln(Country, " population is ", Population).

    process_query(Query) :-
        Query = total_population(Continent, Population),
        total_population(Continent, Population),
        writeln("Total population of ", Continent, " is ", Population).

    process_query(_) :-
        writeln("Invalid query.").

end implement main

goal
    run.
