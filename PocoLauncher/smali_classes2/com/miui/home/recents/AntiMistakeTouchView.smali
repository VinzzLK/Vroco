.class public Lcom/miui/home/recents/AntiMistakeTouchView;
.super Landroid/view/View;
.source "AntiMistakeTouchView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/AntiMistakeTouchView$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mHandler:Lcom/miui/home/recents/AntiMistakeTouchView$H;

.field private mRect:Landroid/graphics/Rect;

.field private mShowTime:J

.field private mSlideAnimator:Landroid/animation/ValueAnimator;

.field private mTopMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AntiMistakeTouchView"

    const/4 v1, 0x3

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/recents/AntiMistakeTouchView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/AntiMistakeTouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/AntiMistakeTouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance p1, Lcom/miui/home/recents/AntiMistakeTouchView$H;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/home/recents/AntiMistakeTouchView$H;-><init>(Lcom/miui/home/recents/AntiMistakeTouchView;Lcom/miui/home/recents/AntiMistakeTouchView$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mHandler:Lcom/miui/home/recents/AntiMistakeTouchView$H;

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080198

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 78
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableWidth:I

    goto :goto_0

    .line 80
    :cond_0
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableWidth:I

    :goto_0
    const/high16 p2, 0x41200000    # 10.0f

    .line 82
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableHeight:I

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AntiMistakeTouchView: mDrawableWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mDrawableHeight="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AntiMistakeTouchView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget p1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableHeight:I

    iput p1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mTopMargin:I

    .line 89
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mTopMargin:I

    iget p3, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableWidth:I

    iget v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableHeight:I

    add-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mRect:Landroid/graphics/Rect;

    const/16 p1, 0x8

    .line 90
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 92
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/AntiMistakeTouchView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->slideDown()V

    return-void
.end method

.method private initAnimator()V
    .locals 3

    .line 115
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 117
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private slideDown()V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->initAnimator()V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mTopMargin:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 154
    iget-object p0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public containsLocation(F)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containsLocation: inputX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , drawablePosition=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AntiMistakeTouchView"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 108
    iget p0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableWidth:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method public getFrameLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 198
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableWidth:I

    iget p0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableHeight:I

    invoke-direct {v0, v1, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0x51

    .line 199
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 159
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 160
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableWidth:I

    iget v2, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawableHeight:I

    add-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mTopMargin:I

    sub-int v2, v1, p1

    mul-int/lit16 v2, v2, 0xff

    div-int/2addr v2, v1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 162
    sget-boolean v0, Lcom/miui/home/recents/AntiMistakeTouchView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AntiMistakeTouchView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 177
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 178
    iget-object p0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mHandler:Lcom/miui/home/recents/AntiMistakeTouchView$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 170
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 171
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 172
    iget-object p0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public shouldShowAntiMistakeView(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mShowTime:J

    sub-long/2addr v0, v2

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/AntiMistakeTouchView;->containsLocation(F)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x7d0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public showMistakeTouchView()V
    .locals 2

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/AntiMistakeTouchView;->updateVisibilityState(I)V

    .line 127
    invoke-virtual {p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->slideUp()V

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mShowTime:J

    return-void
.end method

.method public slideUp()V
    .locals 5

    .line 133
    sget-boolean v0, Lcom/miui/home/recents/AntiMistakeTouchView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AntiMistakeTouchView"

    const-string v1, "slideUp: "

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mHandler:Lcom/miui/home/recents/AntiMistakeTouchView$H;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->initAnimator()V

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 143
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 144
    iget-object p0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mHandler:Lcom/miui/home/recents/AntiMistakeTouchView$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public updateVisibilityState(I)V
    .locals 2

    .line 182
    sget-boolean v0, Lcom/miui/home/recents/AntiMistakeTouchView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVisibilityState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntiMistakeTouchView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mSlideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-nez p1, :cond_2

    .line 190
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mTopMargin:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 191
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 193
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
