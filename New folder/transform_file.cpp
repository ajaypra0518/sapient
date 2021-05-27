
#include <cstdio>
#include <cerrno>
#include <cstdlib>
#include <cstring>

constexpr size_t maxstring = 1024;  
constexpr size_t n_size = 32;    
constexpr size_t d_size = 128;   
constexpr const char * filename = "/Users/Ajay/Desktop/C++ program/items.txt";
constexpr size_t max_split = 15;
constexpr char tab_char = '\t';

struct Item {
    int sku;                
    char name[n_size];   
    char desc[d_size];  
};

size_t * str_seps(const char * s, size_t len) {
    static size_t indicies[max_split + 1];
    size_t & count = indicies[0];
    if(len < 3) return indicies;
    for(size_t & z : indicies) z = 0; 

    for(size_t i = 0; i < len; ++i) {
        if(s[i] == tab_char) {
            ++count;
            indicies[count] = i;
            if(count >= max_split) break;
        }
    }
    return indicies;
}


int main()
{
    char buf[maxstring];    


    FILE * fr = fopen(filename, "r");
    if(!fr) {
        const char * errstr = strerror(errno);
        printf("cannot open file (%d): %s\n", errno, errstr);
        return 1;
    }

 
    while(fgets(buf, maxstring, fr)) {
        size_t len = strnlen(buf, maxstring);
        if(len <= 5) continue;

  
        if(buf[len - 1] == '\n') {
            buf[len - 1] = 0;
            --len;
        }
        
        size_t * split3 = str_seps(buf, len);
        if(split3[0] < 2) break;
        buf[split3[1]] = buf[split3[2]] = 0; 

        Item item;
        item.sku = atoi(buf);
        strncpy(item.name, buf + split3[1] + 1, n_size - 1);
        strncpy(item.desc, buf + split3[2] + 1, d_size - 1);
        printf("sku: %d, name: %s, desc: %s\n", item.sku, item.name, item.desc);
    }
    return 0;
}

