.class abstract Lcom/miui/home/launcher/layout/LayoutDataHandler;
.super Ljava/lang/Object;
.source "LayoutDataHandler.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private nextHandler:Lcom/miui/home/launcher/layout/LayoutDataHandler;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/layout/LayoutDataHandler;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method handleData(Ljava/util/Map;Ljava/util/Map;IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;IIII)V"
        }
    .end annotation

    .line 11
    invoke-virtual/range {p0 .. p6}, Lcom/miui/home/launcher/layout/LayoutDataHandler;->processData(Ljava/util/Map;Ljava/util/Map;IIII)V

    .line 12
    iget-object v0, p0, Lcom/miui/home/launcher/layout/LayoutDataHandler;->nextHandler:Lcom/miui/home/launcher/layout/LayoutDataHandler;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/layout/LayoutDataHandler;->handleData(Ljava/util/Map;Ljava/util/Map;IIII)V

    :cond_0
    return-void
.end method

.method abstract processData(Ljava/util/Map;Ljava/util/Map;IIII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;IIII)V"
        }
    .end annotation
.end method

.method setNextHandler(Lcom/miui/home/launcher/layout/LayoutDataHandler;)Lcom/miui/home/launcher/layout/LayoutDataHandler;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/miui/home/launcher/layout/LayoutDataHandler;->nextHandler:Lcom/miui/home/launcher/layout/LayoutDataHandler;

    return-object p1
.end method
