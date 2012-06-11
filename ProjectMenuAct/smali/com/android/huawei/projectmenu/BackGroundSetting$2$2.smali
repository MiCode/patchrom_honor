.class Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;
.super Ljava/lang/Object;
.source "BackGroundSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/huawei/projectmenu/BackGroundSetting$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$2;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/BackGroundSetting$2;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v6, 0x7f060074

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 333
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$2;

    iget-object v2, v2, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    iget-object v2, v2, Lcom/android/huawei/projectmenu/BackGroundSetting;->entryEditText:Landroid/widget/EditText;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 334
    .local v0, text:Ljava/lang/String;
    :goto_0
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "text = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 336
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$2;

    iget-object v2, v2, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-static {v0}, Lcom/android/huawei/projectmenu/ProjectMenu;->diagUnLock(Ljava/lang/String;)Z

    move-result v3

    #setter for: Lcom/android/huawei/projectmenu/BackGroundSetting;->isRetDiagValue:Z
    invoke-static {v2, v3}, Lcom/android/huawei/projectmenu/BackGroundSetting;->access$102(Lcom/android/huawei/projectmenu/BackGroundSetting;Z)Z

    .line 337
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!TextUtils.isEmpty ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$2;

    iget-object v4, v4, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    #getter for: Lcom/android/huawei/projectmenu/BackGroundSetting;->isRetDiagValue:Z
    invoke-static {v4}, Lcom/android/huawei/projectmenu/BackGroundSetting;->access$100(Lcom/android/huawei/projectmenu/BackGroundSetting;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$2;

    iget-object v2, v2, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$2;

    iget-object v2, v2, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    #getter for: Lcom/android/huawei/projectmenu/BackGroundSetting;->isRetDiagValue:Z
    invoke-static {v2}, Lcom/android/huawei/projectmenu/BackGroundSetting;->access$100(Lcom/android/huawei/projectmenu/BackGroundSetting;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f060028

    :goto_1
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 345
    iget-object v1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$2;

    iget-object v1, v1, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    #getter for: Lcom/android/huawei/projectmenu/BackGroundSetting;->isRetDiagValue:Z
    invoke-static {v1}, Lcom/android/huawei/projectmenu/BackGroundSetting;->access$100(Lcom/android/huawei/projectmenu/BackGroundSetting;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$2;

    iget-object v1, v1, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-virtual {v1, v5}, Lcom/android/huawei/projectmenu/BackGroundSetting;->removeDialog(I)V

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$2;

    iget-object v1, v1, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    iget-object v1, v1, Lcom/android/huawei/projectmenu/BackGroundSetting;->entryEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :goto_2
    return-void

    .line 333
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$2;

    iget-object v2, v2, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    iget-object v2, v2, Lcom/android/huawei/projectmenu/BackGroundSetting;->entryEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 339
    .restart local v0       #text:Ljava/lang/String;
    :cond_2
    const v2, 0x7f060029

    goto :goto_1

    .line 352
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$2;

    iget-object v3, v3, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060083

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 357
    iget-object v1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;->this$1:Lcom/android/huawei/projectmenu/BackGroundSetting$2;

    iget-object v1, v1, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-virtual {v1, v5}, Lcom/android/huawei/projectmenu/BackGroundSetting;->removeDialog(I)V

    goto :goto_2
.end method
