class yumupdate::conf inherits yumupdate { 
    notify {"print the value":
        message => "
            FAV COLOR   => ${color}
            FAV CAR     => ${car}
            "
    }
}