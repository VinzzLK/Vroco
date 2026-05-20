.class public final Lcom/miui/home/recents/views/FloatingIconView2$Companion;
.super Ljava/lang/Object;
.source "FloatingIconView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/FloatingIconView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLocationBoundsForView(Lcom/miui/home/recents/views/FloatingIconView2$Companion;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/graphics/RectF;)F
    .locals 0

    .line 1212
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/FloatingIconView2$Companion;->getLocationBoundsForView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getOffsetForIconBounds(Lcom/miui/home/recents/views/FloatingIconView2$Companion;ZF)I
    .locals 0

    .line 1212
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView2$Companion;->getOffsetForIconBounds(ZF)I

    move-result p0

    return p0
.end method

.method private final getLocationBoundsForView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/graphics/RectF;)F
    .locals 3

    .line 1238
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->isLauncherView()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 1241
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v1

    .line 1242
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    .line 1240
    invoke-static {v1, p1, p0, v2, v2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 1247
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetWidth()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 1248
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetHeight()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    .line 1247
    invoke-virtual {p3, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    aget p1, p0, v2

    aget p0, p0, v1

    .line 1249
    invoke-virtual {p3, p1, p0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 1251
    :cond_0
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetOriginalLocation()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :goto_0
    return v0
.end method

.method private final getOffsetForIconBounds(ZF)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1263
    :cond_0
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    :goto_0
    return p0
.end method


# virtual methods
.method public final isUseAdaptiveIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Z
    .locals 0

    .line 1257
    instance-of p0, p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz p0, :cond_1

    .line 1258
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1259
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/recents/views/FloatingIconView2;->access$getSNotUseAdaptiveIconPkgs$cp()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
