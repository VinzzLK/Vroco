.class public Lcom/miui/home/recents/views/FakeNavigationBarView;
.super Landroid/view/View;
.source "FakeNavigationBarView.java"


# instance fields
.field private final mBottom:I

.field private final mLightColor:I

.field private final mNavHeight:I

.field private final mNavMeasureWidth:I

.field private final mNavShowWidth:I

.field private final mOffset:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mPaint:Landroid/graphics/Paint;

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height_landscape"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavHeight:I

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0705be

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mRadius:I

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0705c3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavShowWidth:I

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavMeasureWidth:I

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mBottom:I

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06062c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mLightColor:I

    const/4 v2, 0x1

    .line 41
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0706da

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v0

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mOffset:I

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 50
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 54
    iget v1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mRadius:I

    mul-int/lit8 v2, v1, 0x2

    .line 55
    iget v3, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mBottom:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    .line 56
    iget v3, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mOffset:I

    int-to-float v5, v3

    int-to-float v6, v0

    iget v4, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavShowWidth:I

    add-int/2addr v3, v4

    int-to-float v7, v3

    add-int/2addr v0, v2

    int-to-float v8, v0

    int-to-float v9, v1

    int-to-float v10, v1

    iget-object v11, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 79
    iget p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavMeasureWidth:I

    iget p2, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 80
    iget p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavMeasureWidth:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavHeight:I

    .line 81
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 80
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    div-float v7, v1, p0

    .line 66
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr p0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    sub-int/2addr p0, v1

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    add-float/2addr p0, v1

    :goto_0
    move v8, p0

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 68
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 71
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
