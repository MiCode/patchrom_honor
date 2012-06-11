.class Lcom/android/huawei/projectmenu/BackGroundSetting$2;
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
    .line 311
    iput-object p1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f060074

    const/4 v5, 0x1

    .line 317
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    #getter for: Lcom/android/huawei/projectmenu/BackGroundSetting;->mLock:I
    invoke-static {v2}, Lcom/android/huawei/projectmenu/BackGroundSetting;->access$000(Lcom/android/huawei/projectmenu/BackGroundSetting;)I

    move-result v2

    if-nez v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 319
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030002

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 321
    .local v1, textEntryView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/android/huawei/projectmenu/BackGroundSetting;->mTextView:Landroid/widget/TextView;

    .line 322
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    iget-object v2, v2, Lcom/android/huawei/projectmenu/BackGroundSetting;->mTextView:Landroid/widget/TextView;

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 324
    iget-object v3, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v3, Lcom/android/huawei/projectmenu/BackGroundSetting;->entryEditText:Landroid/widget/EditText;

    .line 325
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    iget-object v2, v2, Lcom/android/huawei/projectmenu/BackGroundSetting;->entryEditText:Landroid/widget/EditText;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHeight(I)V

    .line 326
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    iget-object v2, v2, Lcom/android/huawei/projectmenu/BackGroundSetting;->entryEditText:Landroid/widget/EditText;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setWidth(I)V

    .line 328
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/BackGroundSetting$2$2;-><init>(Lcom/android/huawei/projectmenu/BackGroundSetting$2;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060075

    new-instance v4, Lcom/android/huawei/projectmenu/BackGroundSetting$2$1;

    invoke-direct {v4, p0}, Lcom/android/huawei/projectmenu/BackGroundSetting$2$1;-><init>(Lcom/android/huawei/projectmenu/BackGroundSetting$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 388
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .end local v1           #textEntryView:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    #getter for: Lcom/android/huawei/projectmenu/BackGroundSetting;->mLock:I
    invoke-static {v2}, Lcom/android/huawei/projectmenu/BackGroundSetting;->access$000(Lcom/android/huawei/projectmenu/BackGroundSetting;)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 370
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->diagLock()Z

    move-result v3

    #setter for: Lcom/android/huawei/projectmenu/BackGroundSetting;->isRetDiagValue:Z
    invoke-static {v2, v3}, Lcom/android/huawei/projectmenu/BackGroundSetting;->access$102(Lcom/android/huawei/projectmenu/BackGroundSetting;Z)Z

    .line 371
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIAG_LOCK ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    #getter for: Lcom/android/huawei/projectmenu/BackGroundSetting;->isRetDiagValue:Z
    invoke-static {v4}, Lcom/android/huawei/projectmenu/BackGroundSetting;->access$100(Lcom/android/huawei/projectmenu/BackGroundSetting;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    #getter for: Lcom/android/huawei/projectmenu/BackGroundSetting;->isRetDiagValue:Z
    invoke-static {v2}, Lcom/android/huawei/projectmenu/BackGroundSetting;->access$100(Lcom/android/huawei/projectmenu/BackGroundSetting;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f06002a

    :goto_1
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 380
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    #getter for: Lcom/android/huawei/projectmenu/BackGroundSetting;->isRetDiagValue:Z
    invoke-static {v2}, Lcom/android/huawei/projectmenu/BackGroundSetting;->access$100(Lcom/android/huawei/projectmenu/BackGroundSetting;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$2;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-virtual {v2, v5}, Lcom/android/huawei/projectmenu/BackGroundSetting;->removeDialog(I)V

    goto :goto_0

    .line 374
    :cond_2
    const v2, 0x7f06002b

    goto :goto_1

    .line 385
    :cond_3
    const-string v2, "###"

    const-string v3, "return null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
