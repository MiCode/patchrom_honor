.class public Lcom/android/server/FmcCom$sockaddr_in;
.super Ljava/lang/Object;
.source "FmcCom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FmcCom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "sockaddr_in"
.end annotation


# instance fields
.field sin_addr:[B

.field sin_family:S

.field sin_port:S

.field sin_zero:[C


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
