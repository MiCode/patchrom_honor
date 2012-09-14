.class Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$2;
.super Ljava/lang/Object;
.source "UpdateSDCardAndTouchscreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$2;->this$0:Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f060074

    const/4 v5, 0x1

    .line 143
    iget-object v2, p0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$2;->this$0:Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;

    invoke-virtual {v2, v5}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->removeDialog(I)V

    .line 144
    packed-switch p2, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 146
    :pswitch_0
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->getTouchScreenVersion()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, version:Ljava/lang/String;
    const-string v2, "######"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProjectMenuNative.getTouchScreenVersion() touch screen version is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$2;->this$0:Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 156
    .end local v1           #version:Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->touchScreenFirmwareUpgrade()I

    move-result v0

    .line 157
    .local v0, updateTouchscreen:I
    const-string v2, "######"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProjectMenuNative.touchScreenFirmwareUpgrade() ,1 ? success : fail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$2;->this$0:Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;

    invoke-virtual {v2}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 160
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$2;->this$0:Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-ne v0, v5, :cond_0

    const v2, 0x7f060096

    :goto_1
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    const v2, 0x7f060095

    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
