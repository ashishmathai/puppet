class test{ "echotest":
    exec { sample:
        path => '/home/devops',
        command => 'echo "hi" > test.txt',
    }
}