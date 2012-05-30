.class Lcom/android/server/location/GpsLocationProvider$ProviderHandler$2;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$ProviderHandler;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$ProviderHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 2206
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler$2;->this$1:Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler$2;->this$1:Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)V

    .line 2209
    return-void
.end method
