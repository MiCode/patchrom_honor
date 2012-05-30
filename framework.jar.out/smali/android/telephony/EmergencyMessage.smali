.class public interface abstract Landroid/telephony/EmergencyMessage;
.super Ljava/lang/Object;
.source "EmergencyMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/EmergencyMessage$Alerts;,
        Landroid/telephony/EmergencyMessage$Certainty;,
        Landroid/telephony/EmergencyMessage$Urgency;,
        Landroid/telephony/EmergencyMessage$Severity;
    }
.end annotation


# virtual methods
.method public abstract getCertainty()Landroid/telephony/EmergencyMessage$Certainty;
.end method

.method public abstract getLanguageCode()Ljava/lang/String;
.end method

.method public abstract getMessageBody()Ljava/lang/String;
.end method

.method public abstract getMessageIdentifier()I
.end method

.method public abstract getSeverity()Landroid/telephony/EmergencyMessage$Severity;
.end method

.method public abstract getUrgency()Landroid/telephony/EmergencyMessage$Urgency;
.end method
