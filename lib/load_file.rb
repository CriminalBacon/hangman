def read_dictionary
    dictionary = []
    File.open('./5desk.txt').each do |line|
        dictionary.push(line.strip)
    end

    return dictionary
end


def choose_word(dictionary)
    p dictionary.sample
end