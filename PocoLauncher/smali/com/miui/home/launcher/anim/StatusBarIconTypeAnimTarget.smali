.class public final Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;
.super Landroid/view/View;
.source "StatusBarIconTypeAnimTarget.kt"

# interfaces
.implements Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final contentDrawable:Landroid/graphics/drawable/Drawable;

.field private final contentRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentDrawable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->contentDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->contentRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getAnimTargetContainerView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getAnimTargetHeight()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetHeight()I

    move-result p0

    return p0
.end method

.method public getAnimTargetOriginalLocation()Landroid/graphics/Rect;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->contentRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public bridge synthetic getAnimTargetVisibility()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetVisibility()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getAnimTargetWidth()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetWidth()I

    move-result p0

    return p0
.end method

.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->contentDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getContentRect()Landroid/graphics/Rect;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->contentRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public bridge synthetic getHeightDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getHeightDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public getIconRadius()F
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->contentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->contentRect:Landroid/graphics/Rect;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultIconRadiusForRect(Landroid/content/Context;Landroid/graphics/Rect;)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    const/high16 p0, 0x41400000    # 12.0f

    return p0
.end method

.method public bridge synthetic getIconTransparentEdge()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getWidthDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getWidthDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public isLauncherView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setAnimTargetAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetAlpha(F)V

    return-void
.end method

.method public bridge synthetic setAnimTargetVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetVisibility(I)V

    return-void
.end method
