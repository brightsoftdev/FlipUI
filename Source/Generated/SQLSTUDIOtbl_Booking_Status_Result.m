/*
	SQLSTUDIOtbl_Booking_Status_Result.h
	The implementation of properties and methods for the SQLSTUDIOtbl_Booking_Status_Result object.
	Generated by SudzC.com
*/
#import "SQLSTUDIOtbl_Booking_Status_Result.h"

@implementation SQLSTUDIOtbl_Booking_Status_Result
	@synthesize Booking_Status_ID = _Booking_Status_ID;
	@synthesize Booking_Status_Name = _Booking_Status_Name;

	- (id) init
	{
		if(self = [super init])
		{
			self.Booking_Status_Name = nil;

		}
		return self;
	}

	+ (SQLSTUDIOtbl_Booking_Status_Result*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SQLSTUDIOtbl_Booking_Status_Result*)[[[SQLSTUDIOtbl_Booking_Status_Result alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.Booking_Status_ID = [[Soap getNodeValue: node withName: @"Booking_Status_ID"] intValue];
			self.Booking_Status_Name = [Soap getNodeValue: node withName: @"Booking_Status_Name"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"tbl_Booking_Status_Result"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		[s appendFormat: @"<Booking_Status_ID>%@</Booking_Status_ID>", [NSString stringWithFormat: @"%i", self.Booking_Status_ID]];
		if (self.Booking_Status_Name != nil) [s appendFormat: @"<Booking_Status_Name>%@</Booking_Status_Name>", [[self.Booking_Status_Name stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SQLSTUDIOtbl_Booking_Status_Result class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.Booking_Status_Name != nil) { [self.Booking_Status_Name release]; }
		[super dealloc];
	}

@end