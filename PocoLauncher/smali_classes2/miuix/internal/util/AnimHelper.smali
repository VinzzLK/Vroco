.class public Lmiuix/internal/util/AnimHelper;
.super Ljava/lang/Object;
.source "AnimHelper.java"


# static fields
.field private static volatile sIsDebugEnabled:Z = false


# direct methods
.method public static synthetic $r8$lambda$khJa4l-C69ZTmpEWoc1gippFEQc(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lmiuix/internal/util/AnimHelper;->lambda$addItemPressEffect$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static addItemPressEffect(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->itemPressEffectForeground:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    sget-object v0, Lmiuix/internal/util/AnimHelper$$ExternalSyntheticLambda0;->INSTANCE:Lmiuix/internal/util/AnimHelper$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_1
    return-void
.end method

.method public static addPressAnim(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-static {p0, v0}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;Lmiuix/animation/IHoverStyle$HoverEffect;)V

    return-void
.end method

.method public static addPressAnim(Landroid/view/View;Lmiuix/animation/IHoverStyle$HoverEffect;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 55
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v1, v4, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, p0, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v0, v0, [Landroid/view/View;

    aput-object p0, v0, v2

    .line 56
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array v0, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public static addPressAnimWithBg(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 60
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    invoke-interface {v1, v2}, Lmiuix/animation/ITouchStyle;->setTint(I)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 61
    invoke-interface {v1, v4, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v3, v0, [Landroid/view/View;

    aput-object p0, v3, v2

    .line 62
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v3

    invoke-interface {v3, v2}, Lmiuix/animation/IHoverStyle;->setTint(I)Lmiuix/animation/IHoverStyle;

    move-result-object v3

    sget-object v4, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 63
    invoke-interface {v3, v4}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v3

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lmiuix/appcompat/R$attr;->isLightTheme:I

    invoke-static {v4, v5, v0}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x14000000

    .line 67
    invoke-interface {v1, v0}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(I)Lmiuix/animation/ITouchStyle;

    .line 68
    invoke-interface {v3, v0}, Lmiuix/animation/IHoverStyle;->setBackgroundColor(I)Lmiuix/animation/IHoverStyle;

    goto :goto_0

    :cond_0
    const v0, 0x24ffffff

    .line 70
    invoke-interface {v1, v0}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(I)Lmiuix/animation/ITouchStyle;

    .line 71
    invoke-interface {v3, v0}, Lmiuix/animation/IHoverStyle;->setBackgroundColor(I)Lmiuix/animation/IHoverStyle;

    :goto_0
    new-array v0, v2, [Lmiuix/animation/base/AnimConfig;

    .line 73
    invoke-interface {v1, p0, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v0, v2, [Lmiuix/animation/base/AnimConfig;

    .line 74
    invoke-interface {v3, p0, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public static isDialogDebugInAndroidUIThreadEnabled()Z
    .locals 1

    .line 99
    sget-boolean v0, Lmiuix/internal/util/AnimHelper;->sIsDebugEnabled:Z

    return v0
.end method

.method private static synthetic lambda$addItemPressEffect$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 41
    invoke-virtual {p0, v1}, Landroid/view/View;->setHovered(Z)V

    :cond_1
    :goto_0
    return v1
.end method
