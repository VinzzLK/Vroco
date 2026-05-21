.class public Lcom/miui/home/launcher/ConfigurationFilter$Holder;
.super Ljava/lang/Object;
.source "ConfigurationFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ConfigurationFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field static sInstance:Lcom/miui/home/launcher/ConfigurationFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/ConfigurationFilter$FlipDeviceFilter;

    invoke-direct {v0}, Lcom/miui/home/launcher/ConfigurationFilter$FlipDeviceFilter;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/ConfigurationFilter$DefaultDeviceFilter;

    invoke-direct {v0}, Lcom/miui/home/launcher/ConfigurationFilter$DefaultDeviceFilter;-><init>()V

    :goto_0
    sput-object v0, Lcom/miui/home/launcher/ConfigurationFilter$Holder;->sInstance:Lcom/miui/home/launcher/ConfigurationFilter;

    return-void
.end method
