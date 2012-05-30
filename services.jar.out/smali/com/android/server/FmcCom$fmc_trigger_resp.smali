.class public Lcom/android/server/FmcCom$fmc_trigger_resp;
.super Ljava/lang/Object;
.source "FmcCom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FmcCom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "fmc_trigger_resp"
.end annotation


# instance fields
.field ds_fmc_app_fmc_bearer_status:I

.field tunnel_dest_ip:Lcom/android/server/FmcCom$sockaddr_in;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
