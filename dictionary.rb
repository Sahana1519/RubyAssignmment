class Dictionary
    $words = {"Class" => "a set or category of things having some property or attribute in common.", "Object" => "Say something to express one's opposition to or disagreement with something.", "Application" => "The action of putting something into operation."} 
    def showwords
        puts $words.sort
    end
    def searchword(word)
        if $words.has_key?(word)==true
            puts "Word is added to the list"
            puts word
            puts $words[word]
        else
            puts "word not present in dictionary"
        end
    end
    def addword(word,meaning)
        if $words.has_key?(word)==false
            $words[word]=meaning
            puts "Word is added to the list"
            puts $words.sort
        else
            puts "word already present in dictionary"
        end
    end
    def deleteword(word)
        puts word
        if $words.has_key?(word)==true
            $words.delete(word)
            puts "Word is deleted from the list"
            puts $words.sort
        else
            puts "No word found in list to delete"
        end
    end
    def actions
        puts "Choose a number to perform the action: "
        puts "1:List Words 2: Search Word, 3: Add Word,  4: Delete Word, 5: exit"
        action_id = gets.to_i
        case action_id
            when 1
                showwords 
            when 2
                puts "Ente the word to be searched"
                word=gets.strip
                searchword(word)   
            when 3
                puts "Ente the word to be added"
                word=gets.strip
                puts "Enter the meaning of the word"
                meaning=gets.strip
                addword(word,meaning)
            when 4
                puts "Enter the word to be deleted: "
                word_input = gets.chomp
                deleteword(word_input)
            when 5
                puts "Thanks for using my dictionary..!"
            else
                puts "Enter a valid number from the above list.."
        end
    end
end

obj = Dictionary.new
obj.actions
