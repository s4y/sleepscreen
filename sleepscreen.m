#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
	io_registry_entry_t r = IORegistryEntryFromPath(kIOMasterPortDefault, "IOService:/IOResources/IODisplayWrangler");
	if(r)
	{ 
		IORegistryEntrySetCFProperty(r, CFSTR("IORequestIdle"), kCFBooleanTrue);
		IOObjectRelease(r);
	}
    return 0;
}
