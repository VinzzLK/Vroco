.class public final Lcom/miui/home/recents/anim/AllElementParams;
.super Ljava/lang/Object;
.source "ElementParams.kt"


# instance fields
.field private final initRecentBlurParam:Lcom/miui/home/recents/anim/RecentBlurParams;

.field private final initShortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

.field private final initWallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

.field private final nextState:Lcom/miui/home/recents/anim/StateType;

.field private final recentBlurParams:Lcom/miui/home/recents/anim/RecentBlurParams;

.field private final shortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

.field private final taskViewsParams:Lcom/miui/home/recents/anim/TaskViewsParams;

.field private final wallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

.field private windowEmptyRunnable:Ljava/lang/Runnable;

.field private final windowParams:Lcom/miui/home/recents/anim/RectFParams;


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/miui/home/recents/anim/AllElementParams;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/miui/home/recents/anim/AllElementParams;->windowParams:Lcom/miui/home/recents/anim/RectFParams;

    .line 22
    iput-object p2, p0, Lcom/miui/home/recents/anim/AllElementParams;->initShortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    .line 23
    iput-object p3, p0, Lcom/miui/home/recents/anim/AllElementParams;->shortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    .line 24
    iput-object p4, p0, Lcom/miui/home/recents/anim/AllElementParams;->initWallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

    .line 25
    iput-object p5, p0, Lcom/miui/home/recents/anim/AllElementParams;->wallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

    .line 26
    iput-object p6, p0, Lcom/miui/home/recents/anim/AllElementParams;->taskViewsParams:Lcom/miui/home/recents/anim/TaskViewsParams;

    .line 27
    iput-object p7, p0, Lcom/miui/home/recents/anim/AllElementParams;->nextState:Lcom/miui/home/recents/anim/StateType;

    .line 28
    iput-object p8, p0, Lcom/miui/home/recents/anim/AllElementParams;->initRecentBlurParam:Lcom/miui/home/recents/anim/RecentBlurParams;

    .line 29
    iput-object p9, p0, Lcom/miui/home/recents/anim/AllElementParams;->recentBlurParams:Lcom/miui/home/recents/anim/RecentBlurParams;

    .line 30
    iput-object p10, p0, Lcom/miui/home/recents/anim/AllElementParams;->windowEmptyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x1

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    move-object p10, v0

    .line 20
    :cond_9
    invoke-direct/range {p0 .. p10}, Lcom/miui/home/recents/anim/AllElementParams;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/anim/AllElementParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/anim/AllElementParams;

    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->windowParams:Lcom/miui/home/recents/anim/RectFParams;

    iget-object v3, p1, Lcom/miui/home/recents/anim/AllElementParams;->windowParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->initShortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    iget-object v3, p1, Lcom/miui/home/recents/anim/AllElementParams;->initShortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->shortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    iget-object v3, p1, Lcom/miui/home/recents/anim/AllElementParams;->shortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->initWallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

    iget-object v3, p1, Lcom/miui/home/recents/anim/AllElementParams;->initWallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->wallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

    iget-object v3, p1, Lcom/miui/home/recents/anim/AllElementParams;->wallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->taskViewsParams:Lcom/miui/home/recents/anim/TaskViewsParams;

    iget-object v3, p1, Lcom/miui/home/recents/anim/AllElementParams;->taskViewsParams:Lcom/miui/home/recents/anim/TaskViewsParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->nextState:Lcom/miui/home/recents/anim/StateType;

    iget-object v3, p1, Lcom/miui/home/recents/anim/AllElementParams;->nextState:Lcom/miui/home/recents/anim/StateType;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->initRecentBlurParam:Lcom/miui/home/recents/anim/RecentBlurParams;

    iget-object v3, p1, Lcom/miui/home/recents/anim/AllElementParams;->initRecentBlurParam:Lcom/miui/home/recents/anim/RecentBlurParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->recentBlurParams:Lcom/miui/home/recents/anim/RecentBlurParams;

    iget-object v3, p1, Lcom/miui/home/recents/anim/AllElementParams;->recentBlurParams:Lcom/miui/home/recents/anim/RecentBlurParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/miui/home/recents/anim/AllElementParams;->windowEmptyRunnable:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/miui/home/recents/anim/AllElementParams;->windowEmptyRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getInitRecentBlurParam()Lcom/miui/home/recents/anim/RecentBlurParams;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/recents/anim/AllElementParams;->initRecentBlurParam:Lcom/miui/home/recents/anim/RecentBlurParams;

    return-object p0
.end method

.method public final getInitShortcutParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/recents/anim/AllElementParams;->initShortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    return-object p0
.end method

.method public final getInitWallpaperParam()Lcom/miui/home/recents/anim/WallpaperParam;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/miui/home/recents/anim/AllElementParams;->initWallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

    return-object p0
.end method

.method public final getNextState()Lcom/miui/home/recents/anim/StateType;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/recents/anim/AllElementParams;->nextState:Lcom/miui/home/recents/anim/StateType;

    return-object p0
.end method

.method public final getRecentBlurParams()Lcom/miui/home/recents/anim/RecentBlurParams;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/recents/anim/AllElementParams;->recentBlurParams:Lcom/miui/home/recents/anim/RecentBlurParams;

    return-object p0
.end method

.method public final getShortcutParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/recents/anim/AllElementParams;->shortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    return-object p0
.end method

.method public final getTaskViewsParams()Lcom/miui/home/recents/anim/TaskViewsParams;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/recents/anim/AllElementParams;->taskViewsParams:Lcom/miui/home/recents/anim/TaskViewsParams;

    return-object p0
.end method

.method public final getWallpaperParam()Lcom/miui/home/recents/anim/WallpaperParam;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/recents/anim/AllElementParams;->wallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

    return-object p0
.end method

.method public final getWindowEmptyRunnable()Ljava/lang/Runnable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/recents/anim/AllElementParams;->windowEmptyRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getWindowParams()Lcom/miui/home/recents/anim/RectFParams;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/recents/anim/AllElementParams;->windowParams:Lcom/miui/home/recents/anim/RectFParams;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/anim/AllElementParams;->windowParams:Lcom/miui/home/recents/anim/RectFParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/AllElementParams;->initShortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/AllElementParams;->shortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/AllElementParams;->initWallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WallpaperParam;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/AllElementParams;->wallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WallpaperParam;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/AllElementParams;->taskViewsParams:Lcom/miui/home/recents/anim/TaskViewsParams;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/miui/home/recents/anim/TaskViewsParams;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/AllElementParams;->nextState:Lcom/miui/home/recents/anim/StateType;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/AllElementParams;->initRecentBlurParam:Lcom/miui/home/recents/anim/RecentBlurParams;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RecentBlurParams;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/AllElementParams;->recentBlurParams:Lcom/miui/home/recents/anim/RecentBlurParams;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RecentBlurParams;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/recents/anim/AllElementParams;->windowEmptyRunnable:Ljava/lang/Runnable;

    if-nez p0, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    return v0
.end method

.method public final setWindowEmptyRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/miui/home/recents/anim/AllElementParams;->windowEmptyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AllElementParams(windowParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->windowParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initShortcutParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->initShortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shortcutParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->shortcutParams:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initWallpaperParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->initWallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wallpaperParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->wallpaperParam:Lcom/miui/home/recents/anim/WallpaperParam;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskViewsParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->taskViewsParams:Lcom/miui/home/recents/anim/TaskViewsParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->nextState:Lcom/miui/home/recents/anim/StateType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initRecentBlurParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->initRecentBlurParam:Lcom/miui/home/recents/anim/RecentBlurParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recentBlurParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/AllElementParams;->recentBlurParams:Lcom/miui/home/recents/anim/RecentBlurParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowEmptyRunnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/anim/AllElementParams;->windowEmptyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
