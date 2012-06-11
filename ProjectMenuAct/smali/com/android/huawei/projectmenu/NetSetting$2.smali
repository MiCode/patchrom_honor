.class Lcom/android/huawei/projectmenu/NetSetting$2;
.super Ljava/lang/Object;
.source "NetSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/huawei/projectmenu/NetSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/huawei/projectmenu/NetSetting;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/NetSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/huawei/projectmenu/NetSetting$2;->this$0:Lcom/android/huawei/projectmenu/NetSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 271
    iget-object v0, p0, Lcom/android/huawei/projectmenu/NetSetting$2;->this$0:Lcom/android/huawei/projectmenu/NetSetting;

    invoke-virtual {v0, v2}, Lcom/android/huawei/projectmenu/NetSetting;->dismissDialog(I)V

    .line 273
    if-nez p2, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/huawei/projectmenu/NetSetting$2;->this$0:Lcom/android/huawei/projectmenu/NetSetting;

    invoke-static {v4}, Lcom/android/huawei/projectmenu/ProjectMenu;->serviceDomainSetting(I)Z

    move-result v1

    #setter for: Lcom/android/huawei/projectmenu/NetSetting;->ret:Z
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/NetSetting;->access$002(Lcom/android/huawei/projectmenu/NetSetting;Z)Z

    .line 275
    invoke-static {v4}, Lcom/android/huawei/projectmenu/NetSetting;->access$102(I)I

    .line 276
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CS_ONLY ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/huawei/projectmenu/NetSetting$2;->this$0:Lcom/android/huawei/projectmenu/NetSetting;

    #getter for: Lcom/android/huawei/projectmenu/NetSetting;->ret:Z
    invoke-static {v2}, Lcom/android/huawei/projectmenu/NetSetting;->access$000(Lcom/android/huawei/projectmenu/NetSetting;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/huawei/projectmenu/NetSetting$2;->this$0:Lcom/android/huawei/projectmenu/NetSetting;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/huawei/projectmenu/NetSetting$2;->this$0:Lcom/android/huawei/projectmenu/NetSetting;

    #getter for: Lcom/android/huawei/projectmenu/NetSetting;->ret:Z
    invoke-static {v0}, Lcom/android/huawei/projectmenu/NetSetting;->access$000(Lcom/android/huawei/projectmenu/NetSetting;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f060088

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 297
    :cond_0
    return-void

    .line 278
    :cond_1
    if-ne p2, v2, :cond_2

    .line 279
    iget-object v0, p0, Lcom/android/huawei/projectmenu/NetSetting$2;->this$0:Lcom/android/huawei/projectmenu/NetSetting;

    invoke-static {v2}, Lcom/android/huawei/projectmenu/ProjectMenu;->serviceDomainSetting(I)Z

    move-result v1

    #setter for: Lcom/android/huawei/projectmenu/NetSetting;->ret:Z
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/NetSetting;->access$002(Lcom/android/huawei/projectmenu/NetSetting;Z)Z

    .line 280
    invoke-static {v2}, Lcom/android/huawei/projectmenu/NetSetting;->access$102(I)I

    .line 281
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PS_ONLY ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/huawei/projectmenu/NetSetting$2;->this$0:Lcom/android/huawei/projectmenu/NetSetting;

    #getter for: Lcom/android/huawei/projectmenu/NetSetting;->ret:Z
    invoke-static {v2}, Lcom/android/huawei/projectmenu/NetSetting;->access$000(Lcom/android/huawei/projectmenu/NetSetting;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :cond_2
    if-ne p2, v3, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/huawei/projectmenu/NetSetting$2;->this$0:Lcom/android/huawei/projectmenu/NetSetting;

    invoke-static {v3}, Lcom/android/huawei/projectmenu/ProjectMenu;->serviceDomainSetting(I)Z

    move-result v1

    #setter for: Lcom/android/huawei/projectmenu/NetSetting;->ret:Z
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/NetSetting;->access$002(Lcom/android/huawei/projectmenu/NetSetting;Z)Z

    .line 285
    invoke-static {v3}, Lcom/android/huawei/projectmenu/NetSetting;->access$102(I)I

    .line 286
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CS_AND_PS ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/huawei/projectmenu/NetSetting$2;->this$0:Lcom/android/huawei/projectmenu/NetSetting;

    #getter for: Lcom/android/huawei/projectmenu/NetSetting;->ret:Z
    invoke-static {v2}, Lcom/android/huawei/projectmenu/NetSetting;->access$000(Lcom/android/huawei/projectmenu/NetSetting;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_3
    const v0, 0x7f060089

    goto :goto_1
.end method
