import std::io;

struct ArgparseOption {
    String shortHand;
    String longHand;
    bool required;
    void* data;
}

fn int parseOptions (String[] args, ArgparseOption[] options) {
    foreach (i, arg:args) {
        io::printn(arg);f (arg[0] == '-') {
            if (arg[1] == '-') {
                io::printn("pls let me panik");
            }
        }
    }
    return 1;
}

fn int main(String[] args)
{
    String name;
    int age;

    ArgparseOption nameOpt = {
        "n",
        "name",
        false,
        &name
    };

    ArgparseOption ageOpt= {
        "a",
        "age",
        true,
        &age
    };


    ArgparseOption[*] options = {nameOpt, ageOpt};
    parseOptions(args, &options);

    return 0;
}
