.class public final Landroid/content/ContentService$ObserverCall;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverCall"
.end annotation


# instance fields
.field final mNode:Landroid/content/ContentService$ObserverNode;

.field final mObserver:Landroid/database/IContentObserver;

.field final mSelfNotify:Z


# direct methods
.method constructor <init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;Z)V
    .locals 0
    .parameter "node"
    .parameter "observer"
    .parameter "selfNotify"

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Landroid/content/ContentService$ObserverCall;->mNode:Landroid/content/ContentService$ObserverNode;

    .line 226
    iput-object p2, p0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    .line 227
    iput-boolean p3, p0, Landroid/content/ContentService$ObserverCall;->mSelfNotify:Z

    .line 228
    return-void
.end method
