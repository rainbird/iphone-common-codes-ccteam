//
//  CCXml.m
//  CCFC
//
//  Created by xichen on 11-12-19.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCXml.h"

@implementation CCXmlProperty

- (id)initWithAttr:(xmlAttrPtr)attr
{
	self = [super init];
	if(self)
	{
		_attr = attr;
	}
	return self;
}

- (void)dealloc
{
	[super dealloc];
}

@end


@implementation CCXmlNode

+ (id)nodeWithNode:(CCXmlNode *)node
{
	return [[[CCXmlNode alloc] initWithNode:node->_node] autorelease];
}

- (id)initWithNode:(xmlNodePtr)node
{
	self = [super init];
	if(self)
	{
		_node = node;
	}
	return self;
}

- (void)dealloc
{
	[super dealloc];
}

- (int)type
{
	return _node->type;
}

- (CCXmlNode *)next
{
	if(_node->next == NULL)
		return nil;
	return [[[CCXmlNode alloc] initWithNode:_node->next] autorelease];
}

- (CCXmlNode *)prev
{
	if(_node->prev == NULL)
		return nil;
	return [[[CCXmlNode alloc] initWithNode:_node->prev] autorelease];
}

- (CCXmlNode *)last
{
	if(_node->last == NULL)
		return nil;
	return [[[CCXmlNode alloc] initWithNode:_node->last] autorelease];
}

- (CCXmlNode *)child
{
	if(_node->children == NULL)
		return nil;
	return [[[CCXmlNode alloc] initWithNode:_node->children] autorelease];
}

- (CCXmlNode *)parent
{
	if(_node->parent == NULL)
		return nil;
	return [[[CCXmlNode alloc] initWithNode:_node->parent] autorelease];
}

- (unsigned char *)name
{
	return (unsigned char *)_node->name;
}

- (unsigned char *)text
{
	return (unsigned char *)xmlNodeGetContent(_node);
}

- (unsigned char *)getProp:(const char *)propName
{
	return (unsigned char *)xmlGetProp(self->_node, (const xmlChar *)propName);
}

- (void)setProp:(const char *)name withValue:(const char *)value
{
	xmlSetProp(self->_node, BAD_CAST(name), BAD_CAST(value));
}

@end


@implementation CCXml

- (id)initWithFileFullPath:(NSString *)fileFullPath
{
	self = [super init];
	if(self)
	{
		_doc = xmlParseFile([fileFullPath UTF8String]);
		if(_doc == NULL)
			return nil;
		
		_rootNode = [[CCXmlNode alloc] initWithNode:xmlDocGetRootElement(_doc)];
		
		_firstLevelNodesArr = [NSMutableArray new];
		if(_rootNode != nil)
		{
			xmlNodePtr curNode = _rootNode->_node->children;
			while(curNode != NULL)
			{
				if(curNode->type == XML_ELEMENT_NODE)
				{
					[_firstLevelNodesArr addObject:[[[CCXmlNode alloc] initWithNode:curNode] autorelease]];
				}
				curNode = curNode->next;
			}
		}
	}
	return self;
}

- (void)dealloc
{
	if(_doc != NULL)
		xmlFreeDoc(_doc);
	[_rootNode release];
	
	[super dealloc];
}

- (CCXmlNode *)getRootNode
{
	return _rootNode;
}

- (NSArray *)firstLevelNodeArr
{
	return _firstLevelNodesArr;
}

- (NSArray *)getSubElementNodeArr:(CCXmlNode *)mainNode
{
	NSMutableArray *arr = [NSMutableArray array];
	if(mainNode != nil)
	{
		xmlNodePtr curNode = mainNode->_node->children;
		while(curNode != NULL)
		{
			if(curNode->type == XML_ELEMENT_NODE)
			{
				[arr addObject:[[[CCXmlNode alloc] initWithNode:curNode] autorelease]];
			}
			curNode = curNode->next;
		}
	}
	
	return arr;
}


@end
