.class Lcom/android/server/location/ComprehensiveCountryDetector$2;
.super Ljava/lang/Object;
.source "ComprehensiveCountryDetector.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/ComprehensiveCountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ComprehensiveCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 3
    .parameter "country"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #setter for: Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;
    invoke-static {v0, p1}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$202(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;)Landroid/location/Country;

    .line 99
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;
    invoke-static {v0, v1, v2}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$100(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    .line 100
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #calls: Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V
    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$300(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    .line 101
    return-void
.end method
