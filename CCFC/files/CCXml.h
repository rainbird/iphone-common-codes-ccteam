//
//  CCXml.h
//  CCFC
//
//  Created by xichen on 11-12-19.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <libxml/parser.h>			// libxml2.2.dylib or some dylib is like this


@interface CCXmlProperty : NSObject
{
@private
	xmlAttrPtr		_attr;
}

- (id)initWithAttr:(xmlAttrPtr)attr;
- (void)dealloc;

@end


@interface CCXmlNode : NSObject
{
@public
	xmlNodePtr		_node;
@private
	CCXmlNode		*_next;
	CCXmlNode		*_prev;
	CCXmlNode		*_last;
	CCXmlNode		*_child;
	CCXmlNode		*_parent; 

	unsigned char	*_name;
	unsigned char	*_content;
}

+ (id)nodeWithNode:(CCXmlNode *)node;
- (id)initWithNode:(xmlNodePtr)node;
- (void)dealloc;

- (int)type;
- (CCXmlNode *)next;
- (CCXmlNode *)prev;
- (CCXmlNode *)last;
- (CCXmlNode *)child;
- (CCXmlNode *)parent;
- (unsigned char *)name;
- (unsigned char *)text;
- (unsigned char *)getProp:(const char *)propName;
- (void)setProp:(const char *)name withValue:(const char *)value;

@end

// a simple DOM parse class
@interface CCXml : NSObject 
{
@private
	xmlDocPtr		_doc;
	CCXmlNode		*_rootNode;
	
	NSMutableArray	*_firstLevelNodesArr;	// array of CCXmlNode* elements
}

// if the xml file isn't valid, then returns nil
- (id)initWithFileFullPath:(NSString *)fileFullPath;
- (void)dealloc;

- (CCXmlNode *)getRootNode;
- (NSArray *)firstLevelNodeArr;

- (NSArray *)getSubElementNodeArr:(CCXmlNode *)mainNode;

@end
