.class final Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;
.super Ljava/lang/Object;
.source "HuaweiPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/telephony/HuaweiPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadRequest"
.end annotation


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;->arg1:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;->arg2:Ljava/lang/Object;

    .line 84
    return-void
.end method
