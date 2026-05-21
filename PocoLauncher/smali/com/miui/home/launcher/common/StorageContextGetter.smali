.class public Lcom/miui/home/launcher/common/StorageContextGetter;
.super Ljava/lang/Object;
.source "StorageContextGetter.java"


# direct methods
.method public static getContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method
