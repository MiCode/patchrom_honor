.class final Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;
.super Landroid/os/Handler;
.source "HuaweiPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/telephony/HuaweiPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/telephony/HuaweiPhoneService;


# direct methods
.method private constructor <init>(Lcom/huawei/telephony/HuaweiPhoneService;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->this$0:Lcom/huawei/telephony/HuaweiPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/telephony/HuaweiPhoneService;Lcom/huawei/telephony/HuaweiPhoneService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;-><init>(Lcom/huawei/telephony/HuaweiPhoneService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;

    .line 64
    .local v0, request:Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 71
    :pswitch_0
    return-void

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
