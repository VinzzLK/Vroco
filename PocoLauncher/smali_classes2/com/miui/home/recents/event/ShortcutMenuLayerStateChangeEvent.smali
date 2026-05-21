.class public Lcom/miui/home/recents/event/ShortcutMenuLayerStateChangeEvent;
.super Lcom/miui/home/recents/event/Event;
.source "ShortcutMenuLayerStateChangeEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x7de

    .line 7
    iput v0, p0, Lcom/miui/home/recents/event/ShortcutMenuLayerStateChangeEvent;->type:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/miui/home/recents/event/ShortcutMenuLayerStateChangeEvent;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/miui/home/recents/event/ShortcutMenuLayerStateChangeEvent;->info:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/recents/event/ShortcutMenuLayerStateChangeEvent;->info:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    if-nez p0, :cond_0

    const-string p0, "info"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/miui/home/recents/event/ShortcutMenuLayerStateChangeEvent;->getInfo()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/miui/home/recents/event/ShortcutMenuLayerStateChangeEvent;->type:I

    return p0
.end method
