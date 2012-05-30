.class public interface abstract Lcom/android/server/ILinkManager;
.super Ljava/lang/Object;
.source "ILinkManager.java"


# static fields
.field public static final UseCne:Ljava/lang/String; = "persist.cne.UseCne"


# virtual methods
.method public abstract getCurrentFwdLatency(I)Ljava/lang/String;
.end method

.method public abstract getCurrentRevLatency(I)Ljava/lang/String;
.end method

.method public abstract getMaxAvailableForwardBandwidth(I)Ljava/lang/String;
.end method

.method public abstract getMaxAvailableReverseBandwidth(I)Ljava/lang/String;
.end method

.method public abstract getMinAvailableForwardBandwidth(I)Ljava/lang/String;
.end method

.method public abstract getMinAvailableReverseBandwidth(I)Ljava/lang/String;
.end method

.method public abstract getNetworkType(I)I
.end method

.method public abstract getQosState(I)Ljava/lang/String;
.end method

.method public abstract releaseLink(I)V
.end method

.method public abstract removeQosRegistration(I)Z
.end method

.method public abstract requestLink(Landroid/net/LinkCapabilities;Ljava/lang/String;Landroid/os/IBinder;)I
.end method

.method public abstract requestQoS(IILjava/lang/String;)Z
.end method

.method public abstract resumeQoS(I)Z
.end method

.method public abstract suspendQoS(I)Z
.end method
