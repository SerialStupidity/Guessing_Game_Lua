--declare local variables
play = 1

--while loop to continue code until the player quits
while play ~=0 do
    --generate random number between 1 and 100
    math.randomseed(os.time())
    math.random()math.random()math.random()
    randomNumber = math.random(1,100)

    --set player attempts to 0
    attempts = 0

    --while loop to continue until player guesses the number or uses all attempts
    while attempts <= 7 and guess ~= randomNumber do
        --ask player for guess
        print("Guess a number between 1 and 100, you have".. 7 - attempts.. " attempts left: ")
        guess = tonumber(io.read())
        while guess == nil do
            print("Not a number, try again")
            guess = tonumber(io.read())
        end

        --add 1 to attempts
        attempts = attempts + 1

        --check if player's guess is too hig or low
        if guess < randomNumber then
            print("Too low, try again.")
        elseif guess > randomNumber then
            print("Too high, try again.")
        end
    end
    --message if player wins
    if guess == randomNumber then
        print("You guessed the number in " .. attempts .. " attempts!")
    break
    --message if player loses 
    else
        print("The number was " .. randomNumber .. ".")
    end
    --ask player if they want to play again
    print("press 1 to play again or 0 to quit: ")
    play = tonumber(io.read())
    while play == nil do--data validation loop
        print("not a number, try again: ")
        play = tonumber(io.read())
    end
end