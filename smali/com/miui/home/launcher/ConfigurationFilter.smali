.class public interface abstract Lcom/miui/home/launcher/ConfigurationFilter;
.super Ljava/lang/Object;
.source "ConfigurationFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ConfigurationFilter$FlipDeviceFilter;,
        Lcom/miui/home/launcher/ConfigurationFilter$DefaultDeviceFilter;,
        Lcom/miui/home/launcher/ConfigurationFilter$Holder;
    }
.end annotation


# direct methods
.method public static getInstance()Lcom/miui/home/launcher/ConfigurationFilter;
    .locals 1

    .line 9
    sget-object v0, Lcom/miui/home/launcher/ConfigurationFilter$Holder;->sInstance:Lcom/miui/home/launcher/ConfigurationFilter;

    return-object v0
.end method


# virtual methods
.method public abstract accept(Landroid/content/res/Configuration;)Z
.end method
