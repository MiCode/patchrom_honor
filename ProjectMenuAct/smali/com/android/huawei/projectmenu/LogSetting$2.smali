.class Lcom/android/huawei/projectmenu/LogSetting$2;
.super Ljava/lang/Object;
.source "LogSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/huawei/projectmenu/LogSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/huawei/projectmenu/LogSetting;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/LogSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/huawei/projectmenu/LogSetting$2;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f060074

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 100
    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$2;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-virtual {v0, v2}, Lcom/android/huawei/projectmenu/LogSetting;->dismissDialog(I)V

    .line 102
    if-nez p2, :cond_2

    .line 103
    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$2;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-static {v2}, Lcom/android/huawei/projectmenu/ProjectMenu;->logOnOff(Z)Z

    move-result v1

    #setter for: Lcom/android/huawei/projectmenu/LogSetting;->isRetLogSwitchValue:Z
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/LogSetting;->access$002(Lcom/android/huawei/projectmenu/LogSetting;Z)Z

    .line 105
    invoke-static {}, Lcom/android/huawei/projectmenu/LogSetting;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/huawei/projectmenu/LogSetting;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {v3}, Lcom/android/huawei/projectmenu/LogSetting;->access$302(I)I

    .line 108
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$2;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$2;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    #getter for: Lcom/android/huawei/projectmenu/LogSetting;->isRetLogSwitchValue:Z
    invoke-static {v0}, Lcom/android/huawei/projectmenu/LogSetting;->access$000(Lcom/android/huawei/projectmenu/LogSetting;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f06002c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 126
    :cond_0
    :goto_1
    return-void

    .line 108
    :cond_1
    const v0, 0x7f06002d

    goto :goto_0

    .line 114
    :cond_2
    if-ne p2, v2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$2;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-static {v3}, Lcom/android/huawei/projectmenu/ProjectMenu;->logOnOff(Z)Z

    move-result v1

    #setter for: Lcom/android/huawei/projectmenu/LogSetting;->isRetLogSwitchValue:Z
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/LogSetting;->access$002(Lcom/android/huawei/projectmenu/LogSetting;Z)Z

    .line 117
    invoke-static {}, Lcom/android/huawei/projectmenu/LogSetting;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/huawei/projectmenu/LogSetting;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {v2}, Lcom/android/huawei/projectmenu/LogSetting;->access$302(I)I

    .line 120
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$2;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$2;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    #getter for: Lcom/android/huawei/projectmenu/LogSetting;->isRetLogSwitchValue:Z
    invoke-static {v0}, Lcom/android/huawei/projectmenu/LogSetting;->access$000(Lcom/android/huawei/projectmenu/LogSetting;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f06002e

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_3
    const v0, 0x7f06002f

    goto :goto_2
.end method
