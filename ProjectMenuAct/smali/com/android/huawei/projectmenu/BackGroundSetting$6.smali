.class Lcom/android/huawei/projectmenu/BackGroundSetting$6;
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
    .line 414
    iput-object p1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$6;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f060074

    const v2, 0x7f060021

    const v1, 0x7f060020

    .line 418
    iget-object v3, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$6;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/huawei/projectmenu/BackGroundSetting;->dismissDialog(I)V

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, flag:Z
    packed-switch p2, :pswitch_data_0

    .line 443
    :goto_0
    return-void

    .line 423
    :pswitch_0
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/huawei/projectmenu/ProjectMenu;->setWakeFlag(I)Z

    move-result v0

    .line 424
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$6;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 432
    :pswitch_1
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/huawei/projectmenu/ProjectMenu;->setWakeFlag(I)Z

    move-result v0

    .line 433
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$6;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    :goto_2
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
