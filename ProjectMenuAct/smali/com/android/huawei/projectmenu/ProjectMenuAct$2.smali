.class Lcom/android/huawei/projectmenu/ProjectMenuAct$2;
.super Ljava/lang/Object;
.source "ProjectMenuAct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/huawei/projectmenu/ProjectMenuAct;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/huawei/projectmenu/ProjectMenuAct;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/ProjectMenuAct;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/huawei/projectmenu/ProjectMenuAct$2;->this$0:Lcom/android/huawei/projectmenu/ProjectMenuAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 66
    new-instance v1, Ljava/io/File;

    const-string v5, "/cache/recovery"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, RECOVERY_DIR:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v5, "command"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v0, COMMAND_FILE:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .local v2, command:Ljava/io/FileWriter;
    :try_start_1
    const-string v5, "--wipe_data_factory"

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 75
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    .end local v2           #command:Ljava/io/FileWriter;
    :goto_0
    iget-object v5, p0, Lcom/android/huawei/projectmenu/ProjectMenuAct$2;->this$0:Lcom/android/huawei/projectmenu/ProjectMenuAct;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 86
    .local v4, pm:Landroid/os/PowerManager;
    const-string v5, "recovery"

    invoke-virtual {v4, v5}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 93
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/huawei/projectmenu/ProjectMenuAct$2;->this$0:Lcom/android/huawei/projectmenu/ProjectMenuAct;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/huawei/projectmenu/ProjectMenuAct$2;->this$0:Lcom/android/huawei/projectmenu/ProjectMenuAct;

    const v7, 0x7f060086

    invoke-virtual {v6, v7}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/huawei/projectmenu/ProjectMenuAct$2;->this$0:Lcom/android/huawei/projectmenu/ProjectMenuAct;

    const v7, 0x7f060074

    invoke-virtual {v6, v7}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 96
    return-void

    .line 77
    .end local v4           #pm:Landroid/os/PowerManager;
    .restart local v2       #command:Ljava/io/FileWriter;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 79
    .end local v2           #command:Ljava/io/FileWriter;
    :catch_0
    move-exception v3

    .line 81
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
