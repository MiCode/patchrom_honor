.class Lcom/android/huawei/projectmenu/BackGroundSetting$5;
.super Ljava/lang/Object;
.source "BackGroundSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/huawei/projectmenu/BackGroundSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/BackGroundSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$5;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$5;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/huawei/projectmenu/BackGroundSetting;->removeDialog(I)V

    .line 449
    return-void
.end method
