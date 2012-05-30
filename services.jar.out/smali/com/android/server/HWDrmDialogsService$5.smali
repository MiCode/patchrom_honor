.class Lcom/android/server/HWDrmDialogsService$5;
.super Ljava/lang/Object;
.source "HWDrmDialogsService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HWDrmDialogsService;->showDlg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HWDrmDialogsService;


# direct methods
.method constructor <init>(Lcom/android/server/HWDrmDialogsService;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/server/HWDrmDialogsService$5;->this$0:Lcom/android/server/HWDrmDialogsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 138
    return-void
.end method
