std::string findEmailDomain(std::string address) {
    auto pos = address.find_last_of('@');
    return address.substr(pos + 1);    
}
