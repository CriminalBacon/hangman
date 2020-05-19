require 'yaml'

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


def save_to_yaml(object)
    #Dir.mkdir("save") unless Dir.exist?("output")

    filename = ("savefile.yaml")
    File.open(filename, "w") do |file|
        file.puts YAML::dump(object)
    end
end

def load_yaml
    x = ''
    $/="\n\n"
    File.open("savefile.yaml", "r").each do |object|
        x = YAML::load(object)
    end
    return x
end