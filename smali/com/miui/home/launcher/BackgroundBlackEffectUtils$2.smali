.class Lcom/miui/home/launcher/BackgroundBlackEffectUtils$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BackgroundBlackEffectUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->blackoutEffectAnimation(Landroid/view/View;IIZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p0, 0x0

    .line 52
    invoke-static {p0}, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->access$002(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
