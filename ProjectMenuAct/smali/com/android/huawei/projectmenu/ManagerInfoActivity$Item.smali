.class Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;
.super Ljava/lang/Object;
.source "ManagerInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/huawei/projectmenu/ManagerInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field mId:I

.field mTitle:Ljava/lang/String;

.field mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "title"
    .parameter "value"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;->mId:I

    .line 54
    iput-object p2, p0, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;->mTitle:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;->mValue:Ljava/lang/String;

    .line 56
    return-void
.end method
