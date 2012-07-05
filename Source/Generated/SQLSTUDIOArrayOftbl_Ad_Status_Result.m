/*
	SQLSTUDIOArrayOftbl_Ad_Status_Result.h
	The implementation of properties and methods for the SQLSTUDIOArrayOftbl_Ad_Status_Result array.
	Generated by SudzC.com
*/
#import "SQLSTUDIOArrayOftbl_Ad_Status_Result.h"

#import "SQLSTUDIOtbl_Ad_Status_Result.h"
@implementation SQLSTUDIOArrayOftbl_Ad_Status_Result

	+ (id) newWithNode: (CXMLNode*) node
	{
		return [[[SQLSTUDIOArrayOftbl_Ad_Status_Result alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SQLSTUDIOtbl_Ad_Status_Result* value = [[SQLSTUDIOtbl_Ad_Status_Result newWithNode: child] object];
				if(value != nil) {
					[self addObject: value];
				}
			}
		}
		return self;
	}
	
	+ (NSMutableString*) serialize: (NSArray*) array
	{
		NSMutableString* s = [NSMutableString string];
		for(id item in array) {
			[s appendString: [item serialize: @"tbl_Ad_Status_Result"]];
		}
		return s;
	}
@end