//
//  xmlParser.h
//  htpp
//
//  Created by MeMac.cn on 10-4-21.
//  Copyright 2010 cc_team. All rights reserved.
//
#ifndef	CC_XML_PARSER
#define	CC_XML_PARSER

#ifdef	__OBJC__	
#import <Foundation/Foundation.h> 

// SAX parse method
#if __IPHONE_OS_VERSION_MAX_ALLOWED <= __IPHONE_4_0
	@interface CCXmlParser : NSObject<NSXMLParserDelegate>
#else
	@interface CCXmlParser : NSObject
#endif
{
	NSXMLParser *parser;				//系统XML解析器
	NSString	*dataBuffer;			//XML数据地址
	NSString	*currElementName;		//内部使用,用于记录每次解析的元素名称
}

@property (nonatomic, retain) NSXMLParser   *parser; 
@property (nonatomic, retain) NSString      *dataBuffer;

- (id)init;
- (void)dealloc;

- (BOOL)startParse:(NSString *) dataBuffer parsedData:(id)baseXmlDataInfoPtr;

//回调: 开始解析元素
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName
				 namespaceURI:(NSString *)namespaceURI 
				 qualifiedName:(NSString *)qualifiedName 
				 attributes:(NSDictionary *)attributeDict;

//回调: 解析元素数据
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string;

//回调: 解析元素尾
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
				  namespaceURI:(NSString *)namespaceURI 
				  qualifiedName:(NSString *)qName; 

//解析过程出现错误
- (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError;

@end

#endif	// __OBJC__
#endif	// CC_XML_PARSER_H
