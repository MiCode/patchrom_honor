.class public interface abstract Landroid/net/IFmcEventListener;
.super Ljava/lang/Object;
.source "IFmcEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IFmcEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFmcStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
