//
//  ViewController.m
//  WebViewDemo
//
//  Created by Ashu on 02/12/12.
//  Copyright (c) 2012 Ashu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// UIWebViewDelgate methods -
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@"Inside shouldStartLoadWithRequest");
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"Inside webViewDidStartLoad");

}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"Inside webViewDidFinishLoad");
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"Inside didFailLoadWithError");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString* path = [[NSBundle mainBundle] pathForResource:@"Image" ofType:@"png"];
    NSURL* url = [[NSURL alloc] initFileURLWithPath:path];
    NSURLRequest* urlRequest = [[NSURLRequest alloc] initWithURL:url];
    UIWebView* webView = (UIWebView*) self.view ;
    [webView loadRequest:urlRequest];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
