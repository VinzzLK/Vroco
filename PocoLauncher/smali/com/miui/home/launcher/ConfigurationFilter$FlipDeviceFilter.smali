.class public Lcom/miui/home/launcher/ConfigurationFilter$FlipDeviceFilter;
.super Ljava/lang/Object;
.source "ConfigurationFilter.java"

# interfaces
.implements Lcom/miui/home/launcher/ConfigurationFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ConfigurationFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlipDeviceFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/content/res/Configuration;)Z
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultScreenType(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method
