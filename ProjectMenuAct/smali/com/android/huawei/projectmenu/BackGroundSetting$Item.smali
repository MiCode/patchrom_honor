.class Lcom/android/huawei/projectmenu/BackGroundSetting$Item;
.super Ljava/lang/Object;
.source "BackGroundSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/huawei/projectmenu/BackGroundSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field mId:I

.field mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "value"

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;->mId:I

    .line 234
    iput-object p2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;->mValue:Ljava/lang/String;

    .line 235
    return-void
.end method
