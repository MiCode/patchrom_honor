.class Lcom/android/huawei/projectmenu/LogSetting$4;
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
    .line 140
    iput-object p1, p0, Lcom/android/huawei/projectmenu/LogSetting$4;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 143
    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$4;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-virtual {v0, v2}, Lcom/android/huawei/projectmenu/LogSetting;->dismissDialog(I)V

    .line 145
    packed-switch p2, :pswitch_data_0

    .line 185
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$4;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$4;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    #getter for: Lcom/android/huawei/projectmenu/LogSetting;->isRetLogLevelValue:Z
    invoke-static {v0}, Lcom/android/huawei/projectmenu/LogSetting;->access$500(Lcom/android/huawei/projectmenu/LogSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060030

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 190
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$4;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-static {v2}, Lcom/android/huawei/projectmenu/ProjectMenu;->logPrioritySetting(I)Z

    move-result v1

    #setter for: Lcom/android/huawei/projectmenu/LogSetting;->isRetLogLevelValue:Z
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/LogSetting;->access$502(Lcom/android/huawei/projectmenu/LogSetting;Z)Z

    .line 148
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/huawei/projectmenu/LogSetting;->access$602(I)I

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$4;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-static {v3}, Lcom/android/huawei/projectmenu/ProjectMenu;->logPrioritySetting(I)Z

    move-result v1

    #setter for: Lcom/android/huawei/projectmenu/LogSetting;->isRetLogLevelValue:Z
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/LogSetting;->access$502(Lcom/android/huawei/projectmenu/LogSetting;Z)Z

    .line 153
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/huawei/projectmenu/LogSetting;->access$602(I)I

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$4;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-static {v4}, Lcom/android/huawei/projectmenu/ProjectMenu;->logPrioritySetting(I)Z

    move-result v1

    #setter for: Lcom/android/huawei/projectmenu/LogSetting;->isRetLogLevelValue:Z
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/LogSetting;->access$502(Lcom/android/huawei/projectmenu/LogSetting;Z)Z

    .line 158
    invoke-static {v2}, Lcom/android/huawei/projectmenu/LogSetting;->access$602(I)I

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$4;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-static {v5}, Lcom/android/huawei/projectmenu/ProjectMenu;->logPrioritySetting(I)Z

    move-result v1

    #setter for: Lcom/android/huawei/projectmenu/LogSetting;->isRetLogLevelValue:Z
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/LogSetting;->access$502(Lcom/android/huawei/projectmenu/LogSetting;Z)Z

    .line 163
    invoke-static {v3}, Lcom/android/huawei/projectmenu/LogSetting;->access$602(I)I

    goto :goto_0

    .line 167
    :pswitch_4
    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$4;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    invoke-static {v6}, Lcom/android/huawei/projectmenu/ProjectMenu;->logPrioritySetting(I)Z

    move-result v1

    #setter for: Lcom/android/huawei/projectmenu/LogSetting;->isRetLogLevelValue:Z
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/LogSetting;->access$502(Lcom/android/huawei/projectmenu/LogSetting;Z)Z

    .line 168
    invoke-static {v4}, Lcom/android/huawei/projectmenu/LogSetting;->access$602(I)I

    goto :goto_0

    .line 172
    :pswitch_5
    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$4;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/huawei/projectmenu/ProjectMenu;->logPrioritySetting(I)Z

    move-result v1

    #setter for: Lcom/android/huawei/projectmenu/LogSetting;->isRetLogLevelValue:Z
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/LogSetting;->access$502(Lcom/android/huawei/projectmenu/LogSetting;Z)Z

    .line 173
    invoke-static {v5}, Lcom/android/huawei/projectmenu/LogSetting;->access$602(I)I

    goto :goto_0

    .line 177
    :pswitch_6
    iget-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting$4;->this$0:Lcom/android/huawei/projectmenu/LogSetting;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/huawei/projectmenu/ProjectMenu;->logPrioritySetting(I)Z

    move-result v1

    #setter for: Lcom/android/huawei/projectmenu/LogSetting;->isRetLogLevelValue:Z
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/LogSetting;->access$502(Lcom/android/huawei/projectmenu/LogSetting;Z)Z

    .line 178
    invoke-static {v6}, Lcom/android/huawei/projectmenu/LogSetting;->access$602(I)I

    goto/16 :goto_0

    .line 185
    :cond_0
    const v0, 0x7f060030

    goto :goto_1

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
