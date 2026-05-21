.class public Lcom/miui/home/launcher/BackgroundBlackEffectUtils;
.super Ljava/lang/Object;
.source "BackgroundBlackEffectUtils.java"


# static fields
.field public static DEFAULT_BLACK_EFFECT_ANIM_DURATION:J = 0xfaL

.field private static mBlackoutEffectAnim:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic access$002(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 10
    sput-object p0, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->mBlackoutEffectAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static adjustColorPercentage(IF)I
    .locals 3

    const/4 v0, 0x0

    .line 61
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 63
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 64
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 65
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 66
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 68
    invoke-static {p1, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static blackoutEffectAnimation(Landroid/view/View;IIZZJ)V
    .locals 2

    if-nez p4, :cond_1

    if-eqz p3, :cond_0

    move p1, p2

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    move v1, p2

    move p2, p1

    move p1, v1

    .line 34
    :cond_2
    sget-object p3, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->mBlackoutEffectAnim:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 35
    sget-object p3, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->mBlackoutEffectAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 37
    :cond_3
    sget-object p3, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->mBlackoutEffectAnim:Landroid/animation/ValueAnimator;

    if-nez p3, :cond_4

    .line 38
    new-instance p3, Landroid/animation/ArgbEvaluator;

    invoke-direct {p3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v0

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, p1

    invoke-static {p3, p4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    sput-object p1, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->mBlackoutEffectAnim:Landroid/animation/ValueAnimator;

    .line 40
    :cond_4
    sget-object p1, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->mBlackoutEffectAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 41
    sget-object p1, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->mBlackoutEffectAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 42
    sget-object p1, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->mBlackoutEffectAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/home/launcher/BackgroundBlackEffectUtils$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/BackgroundBlackEffectUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    sget-object p0, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->mBlackoutEffectAnim:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/miui/home/launcher/BackgroundBlackEffectUtils$2;

    invoke-direct {p1}, Lcom/miui/home/launcher/BackgroundBlackEffectUtils$2;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    sget-object p0, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->mBlackoutEffectAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
