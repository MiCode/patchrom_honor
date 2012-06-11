.class Lcom/android/huawei/projectmenu/BackGroundSetting$8;
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

.field final synthetic val$tmpAudioManager:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/BackGroundSetting;Landroid/media/AudioManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$8;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    iput-object p2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$8;->val$tmpAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x0

    const v1, 0x7f0600a2

    const v4, 0x7f060074

    .line 460
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$8;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/huawei/projectmenu/BackGroundSetting;->dismissDialog(I)V

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, flag:Z
    packed-switch p2, :pswitch_data_0

    .line 487
    :goto_0
    return-void

    .line 465
    :pswitch_0
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$8;->val$tmpAudioManager:Landroid/media/AudioManager;

    const-string v3, "dualmic_enabled=true"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$8;->val$tmpAudioManager:Landroid/media/AudioManager;

    const-string v3, "dualmic_enabled"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 467
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$8;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    const v1, 0x7f0600a0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 475
    :pswitch_1
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$8;->val$tmpAudioManager:Landroid/media/AudioManager;

    const-string v3, "dualmic_enabled=false"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$8;->val$tmpAudioManager:Landroid/media/AudioManager;

    const-string v3, "dualmic_enabled"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 477
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$8;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez v0, :cond_1

    const v1, 0x7f0600a1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
