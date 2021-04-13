class yumupdate inherits yumupdate::params {
    include yumupdate::update
    #include yumupdate::startser
    include yumupdate::conf
}
