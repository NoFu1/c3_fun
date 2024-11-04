import std::io;

struct ArgparseOption {
    String shortHand;
    String longHand;
    bool required;
    void* data;
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

    foreach (i, arg: args) {
        io::printn(arg);
    }
    return 0;
}
