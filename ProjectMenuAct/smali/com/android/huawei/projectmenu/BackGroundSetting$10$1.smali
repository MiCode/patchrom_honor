.class Lcom/android/huawei/projectmenu/BackGroundSetting$10$1;
.super Ljava/lang/Object;
.source "BackGroundSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/huawei/projectmenu/BackGroundSetting$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$10;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/BackGroundSetting$10;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$10$1;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$10$1;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$10;

    iget-object v0, v0, Lcom/android/huawei/projectmenu/BackGroundSetting$10;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    iget-object v0, v0, Lcom/android/huawei/projectmenu/BackGroundSetting;->entryEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$10$1;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$10;

    iget-object v0, v0, Lcom/android/huawei/projectmenu/BackGroundSetting$10;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/huawei/projectmenu/BackGroundSetting;->removeDialog(I)V

    .line 576
    return-void
.end method
