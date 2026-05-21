.class public final Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor$Companion;
.super Ljava/lang/Object;
.source "MarketCustomizeIconVisibleMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor;
    .locals 0

    .line 9
    invoke-static {}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor;

    return-object p0
.end method
