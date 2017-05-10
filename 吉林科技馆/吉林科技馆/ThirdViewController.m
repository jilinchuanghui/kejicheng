//
//  ThirdViewController.m
//  吉林科技馆
//
//  Created by 常玉坤 on 2017/4/17.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "ThirdViewController.h"
#import "CCZTableButton.h"
#import "FourthViewController.h"
//#import "MBProgressHUD.h"
@interface ThirdViewController ()
@property (nonatomic,strong) UIView *firstView;
@property (nonatomic,strong) UIView *secondView;
@property (nonatomic,strong) UIView *thirdView;
@property (nonatomic, strong) CCZTableButton *table;
@property (nonatomic,strong) UIButton *choseBtn;
@property (nonatomic,strong) UITextField *nameTF;
//选择按钮
@property (nonatomic,strong) UIButton *manBtn;
@property (nonatomic,strong) UIButton *womenBtn;
@property (nonatomic,strong) UITextField *phoneTF;
@property (nonatomic,strong) UITextField *pelpleTF;
@property (nonatomic,strong) UIButton *masseageY;
@property (nonatomic,strong) UIButton *messageN;
@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title =@"预约";
    self.view.backgroundColor =[UIColor whiteColor];
//    [self createView];
}

-(void)createView{

    
    UIScrollView *scrollView =[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    scrollView.contentSize =CGSizeMake(ScreenWidth, ScreenHeight);
    
    _firstView =[[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScaleWidth6(200))];
    _firstView.backgroundColor =[UIColor whiteColor];
    UILabel *openL =[[UILabel alloc] initWithFrame:CGRectMake(ScaleWidth6(30), ScaleWidth6(30), ScreenWidth, ScaleHeight6(15))];
    openL.text =@"开馆时间：9：00 -- 18：00";
    openL.textColor =[UIColor blackColor];
    
    UILabel *careL =[[UILabel alloc] initWithFrame:CGRectMake(ScaleWidth6(30), CGRectGetMaxY(openL.frame)+ScaleWidth6(10), ScreenWidth-ScaleWidth6(30)*2, ScaleWidth6(130))];
    careL.text =@"预约注意事项：\n撒讲究啊老三带啊看SD卡窘况及阿娇空哪算哪农信卡侬卡隆卡农线拉涅拉涅拉涅ask开单阿龙口哪弄熊脑遴选阿空涅卡农信卡农信ask遴选阿林新阿卡捏捏";
    careL.font =[UIFont systemFontOfSize:12];
    careL.numberOfLines =0;
    careL.textColor =[UIColor blackColor];
//    careL.adjustsFontSizeToFitWidth =YES;
    
    
    
    
    _secondView =[[UIView alloc] initWithFrame:CGRectMake(CGRectGetMinX(_firstView.frame), CGRectGetMaxY(_firstView.frame)+10, ScreenWidth, ScaleWidth6(651))];
    _secondView.backgroundColor =[UIColor whiteColor];
    
    UILabel *choseL =[[UILabel alloc] initWithFrame:CGRectMake(0, 0, ScaleWidth6(200), ScaleWidth6(93))];
    choseL.textAlignment =NSTextAlignmentCenter;
    choseL.text =@"必 选 项 ：";
//    choseL.backgroundColor =[UIColor greenColor];
    _choseBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    _choseBtn.frame=CGRectMake(CGRectGetMaxX(choseL.frame), 0, 100, ScaleWidth6(93));
    [_choseBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_choseBtn.layer setBorderWidth:1];
    [_choseBtn.layer setCornerRadius:5];
    [_choseBtn addTarget:self action:@selector(clcikbuton) forControlEvents:UIControlEventTouchUpInside];
    
    self.table = [[CCZTableButton alloc] initWithFrame:CGRectMake(CGRectGetMinX(_choseBtn.frame), CGRectGetMinY(_secondView.frame)+59+_choseBtn.frame.size.height, 100, 0)];
    self.table.offsetXOfArrow = 40;
    [self.table addItems:@[@"Objective-C",@"Swift",@"C++",@"C",@"Python",@"Javascript"] exceptItem:@"Swift"];
    [self.table selectedAtIndexHandle:^(NSUInteger index, NSString *itemName) {
        [_choseBtn setTitle:itemName forState:UIControlStateNormal];
    }];

    UILabel *name =[[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(choseL.frame), ScaleWidth6(200), ScaleWidth6(93))];
    name.text =@"组织者姓名：";
    name.textAlignment =NSTextAlignmentCenter;
    name.textColor =[UIColor blackColor];
    _nameTF =[[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(name.frame), CGRectGetMinY(name.frame), ScaleWidth6(350), ScaleWidth6(93))];
    _nameTF.borderStyle =UITextBorderStyleRoundedRect;
    [_nameTF.layer setBorderWidth:1];
    [_nameTF.layer setCornerRadius:5];
    _nameTF.placeholder =@"请输入姓名";
    
    //预约时间，输入框 时间选择器  ？
    UILabel *timeL =[[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(name.frame), ScaleWidth6(200), ScaleWidth6(93))];
    timeL.text =@"预 约 时 间:";
    timeL.textAlignment =NSTextAlignmentCenter;
    timeL.textColor =[UIColor blackColor];
    
    
    
    
    
    
    
    //性别  选择按钮
    UILabel *sexL =[[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(timeL.frame), ScaleWidth6(200), ScaleWidth6(93))];
    sexL.text=@"性       别:";
    sexL.textAlignment =NSTextAlignmentCenter;
    sexL.textColor =[UIColor blackColor];
    _manBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [_manBtn setTitle:@"男" forState:UIControlStateNormal];
    _manBtn.tag =1;
    _manBtn.backgroundColor =[UIColor blueColor];
    [_manBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _manBtn.frame =CGRectMake(CGRectGetMaxX(sexL.frame), CGRectGetMinY(sexL.frame)+ScaleWidth6(20), ScaleWidth6(50), ScaleWidth6(50));
    [_manBtn addTarget:self action:@selector(clickedBtnWith:) forControlEvents:UIControlEventTouchUpInside];
    _womenBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [_womenBtn setTitle:@"女" forState:UIControlStateNormal];
    _womenBtn.tag =2;
    _womenBtn.backgroundColor =[UIColor whiteColor];
    [_womenBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _womenBtn.frame =CGRectMake(CGRectGetMaxX(_manBtn.frame)+ScaleWidth6(10), CGRectGetMinY(sexL.frame)+ScaleWidth6(20), ScaleWidth6(50), ScaleWidth6(50));
    [_womenBtn addTarget:self action:@selector(clickedBtnWith:) forControlEvents:UIControlEventTouchUpInside];
    //手机号码 输入
    UILabel *phoneL=[[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(sexL.frame), ScaleWidth6(200), ScaleWidth6(93))];
    phoneL.text =@"手 机 号 码:";
    phoneL.textAlignment =NSTextAlignmentCenter;
    phoneL.textColor =[UIColor blackColor];
    _phoneTF =[[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(phoneL.frame), CGRectGetMinY(phoneL.frame), ScaleWidth6(350), ScaleHeight6(93))];
    _phoneTF.placeholder =@"请输入手机号";
    _phoneTF.borderStyle =UITextBorderStyleRoundedRect;
    _phoneTF.keyboardType =UIKeyboardTypeNumberPad;
    [_phoneTF.layer setBorderWidth:1];
    [_phoneTF.layer setCornerRadius:5];
    //预约人数 输入
    UILabel *peopleL =[[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(phoneL.frame),ScaleWidth6(200) ,ScaleWidth6(93))];
    peopleL.text =@"预 约 人 数:";
    peopleL.textAlignment =NSTextAlignmentCenter;
    peopleL.textColor =[UIColor blackColor];
    _pelpleTF =[[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(peopleL.frame), CGRectGetMinY(peopleL.frame), ScaleWidth6(350), ScaleHeight6(93))];
    _pelpleTF.placeholder =@"请输入人数";
    _pelpleTF.borderStyle =UITextBorderStyleRoundedRect;
    _pelpleTF.keyboardType =UIKeyboardTypeNumberPad;
    [_pelpleTF.layer setBorderWidth:1];
    [_pelpleTF.layer setCornerRadius:5];
    //短信提醒 选择按钮
    UILabel *messageL =[[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(peopleL.frame), ScaleWidth6(200), ScaleHeight6(93))];
    messageL.text =@"短 信 提 醒:";
    messageL.textAlignment =NSTextAlignmentCenter;
    messageL.textColor =[UIColor blackColor];
 
    UITextView *remarksV =[[UITextView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_secondView.frame), ScreenWidth, ScaleWidth6(150))];
    remarksV.textColor =[UIColor blackColor];
    remarksV.text =@"备注：\naskajskdjaskjdklajsdklajsdklajskldjaklsjdklasjdklajsdklasxknaxnasaksjkdalsjklasjdklasjdklasjdklajsdklajsdklajsdklajsdklajskdlajsdklajskasjdklasjdklajsdklajsdklajsdkajsdkasjdkajsdkajsdkjaskdjaksdj";
    remarksV.scrollEnabled =NO;
    remarksV.editable =NO;
    remarksV.selectable =NO;
    
    UIButton *submitBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    submitBtn.frame =CGRectMake(ScaleWidth6(50), CGRectGetMaxY(remarksV.frame)+ScaleWidth6(5), (ScreenWidth -ScaleWidth6(150))/2, ScaleHeight6(80));
    submitBtn.backgroundColor =[UIColor whiteColor];
    [submitBtn.layer setBorderWidth:1];
    [submitBtn.layer setCornerRadius:5];
    [submitBtn setTitle:@"提交信息" forState:UIControlStateNormal];
    [submitBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [submitBtn addTarget:self action:@selector(submitClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton * afreshBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    afreshBtn.frame =CGRectMake(ScaleWidth6(50)*2+submitBtn.frame.size.width, CGRectGetMaxY(remarksV.frame)+ScaleWidth6(5), (ScreenWidth -ScaleWidth6(150))/2, ScaleHeight6(80));
    afreshBtn.backgroundColor =[UIColor whiteColor];
    [afreshBtn.layer setBorderWidth:1];
    [afreshBtn.layer setCornerRadius:5];
    [afreshBtn setTitle:@"重新填写" forState:UIControlStateNormal];
    [afreshBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [afreshBtn addTarget:self action:@selector(afreshClick) forControlEvents:UIControlEventTouchUpInside];
    
    [_firstView addSubview:careL];
    [_firstView addSubview:openL];
    [scrollView addSubview:afreshBtn];
    [scrollView addSubview:submitBtn];
    [scrollView addSubview:remarksV];
    [_secondView addSubview:messageL];
    [_secondView addSubview:peopleL];
    [_secondView addSubview:_pelpleTF];
    [_secondView addSubview:_phoneTF];
    [_secondView addSubview:phoneL];
    [_secondView addSubview:sexL];
    [_secondView addSubview:_manBtn];
    [_secondView addSubview:_womenBtn];
    [_secondView addSubview:timeL];
    [_secondView addSubview:_nameTF];
    [_secondView addSubview:name];
    [_secondView addSubview:_choseBtn];
    [scrollView addSubview:_firstView];
    [scrollView addSubview:_secondView];
    [_secondView addSubview:choseL];
    [self.view addSubview:scrollView];

}

-(void)submitClick{

    if ([_phoneTF.text isEqualToString:@""]||[_pelpleTF.text isEqualToString:@""]||[_nameTF.text isEqualToString:@""]||[_choseBtn.titleLabel.text isEqualToString:@""]) {
        [MBProgressHUD showError:@"请填写完整信息"];
    }

}

-(void)afreshClick{

    _pelpleTF.text=@"";
    _nameTF.text =@"";
    _phoneTF.text =@"";
    [_choseBtn setTitle:@"" forState:UIControlStateNormal];


}

-(void)clickedBtnWith:(UIButton *)btn
{
    if (btn.tag ==1) {
        _manBtn.backgroundColor =[UIColor blueColor];
        _womenBtn.backgroundColor =[UIColor whiteColor];
        
    }else{
        _womenBtn.backgroundColor =[UIColor blueColor];
        _manBtn.backgroundColor =[UIColor whiteColor];
    }
  

}
-(void)clcikbuton{

    [self.table show];

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
