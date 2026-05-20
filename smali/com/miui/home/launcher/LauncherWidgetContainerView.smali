.class public Lcom/miui/home/launcher/LauncherWidgetContainerView;
.super Landroid/widget/FrameLayout;
.source "LauncherWidgetContainerView.java"

# interfaces
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherWidgetContainerView$OnWidgetContainerClickListener;
    }
.end annotation


# instance fields
.field private final DEBUG_ALIGNMENT:Z

.field private mClickListener:Lcom/miui/home/launcher/LauncherWidgetContainerView$OnWidgetContainerClickListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsMIUIWidget:Z

.field private mPaddingTop:I

.field private final mSetupLayoutParams:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 28
    iput-boolean p3, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->DEBUG_ALIGNMENT:Z

    .line 34
    iput-boolean p3, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mIsMIUIWidget:Z

    .line 47
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/miui/home/launcher/LauncherWidgetContainerView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView$1;-><init>(Lcom/miui/home/launcher/LauncherWidgetContainerView;)V

    new-instance v2, Landroid/os/Handler;

    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 63
    sget-object v0, Lcom/miui/home/R$styleable;->LauncherWidgetContainerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 64
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mSetupLayoutParams:Z

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->setPadding()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherWidgetContainerView;)Lcom/miui/home/launcher/LauncherWidgetContainerView$OnWidgetContainerClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mClickListener:Lcom/miui/home/launcher/LauncherWidgetContainerView$OnWidgetContainerClickListener;

    return-object p0
.end method

.method private getTheme()Lcom/miui/home/launcher/maml/Theme;
    .locals 1

    .line 161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/maml/ThemeSupport;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/maml/ThemeSupport;

    invoke-interface {p0}, Lcom/miui/home/launcher/maml/ThemeSupport;->getTheme()Lcom/miui/home/launcher/maml/Theme;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getWidgetPaddingTop()I
    .locals 0

    .line 198
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mIsMIUIWidget:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setPadding()V
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getWidgetPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mPaddingTop:I

    .line 187
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mSetupLayoutParams:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 146
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 156
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 81
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mSetupLayoutParams:Z

    if-nez v0, :cond_0

    .line 82
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 86
    instance-of v0, p2, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    if-eqz v0, :cond_4

    .line 91
    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ItemInfo;

    .line 92
    instance-of v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 97
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getTheme()Lcom/miui/home/launcher/maml/Theme;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 98
    invoke-interface {v2}, Lcom/miui/home/launcher/maml/Theme;->getTitleStyle()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    .line 102
    :goto_1
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v0, p2, v1}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide v0

    const/16 p2, 0x20

    shr-long v2, v0, p2

    long-to-int p2, v2

    long-to-int v0, v0

    .line 114
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-lez p1, :cond_3

    if-lt p2, p1, :cond_3

    move p2, p1

    :cond_3
    const/high16 p1, 0x40000000    # 2.0f

    .line 119
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 120
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 121
    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 87
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parent must be LauncherAppWidgetHostViewContainer:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 169
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 74
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherWidgetContainerView$OnWidgetContainerClickListener;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetContainerView$OnWidgetContainerClickListener;

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mClickListener:Lcom/miui/home/launcher/LauncherWidgetContainerView$OnWidgetContainerClickListener;

    :cond_0
    return-void
.end method

.method public setIsMIUIWidget(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mIsMIUIWidget:Z

    .line 194
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->setPadding()V

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->setPadding()V

    return-void
.end method
