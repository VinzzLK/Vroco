.class public Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;
.super Lcom/miui/launcher/views/LauncherRelativeLayout;
.source "LauncherAppWidgetHostViewContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/interfaces/IEditable;
.implements Lcom/miui/home/launcher/IItemInfo;
.implements Lcom/miui/home/launcher/UpdateIconSize;


# instance fields
.field protected mDisplayTitle:Z

.field private mDownState:Lmiuix/animation/controller/AnimState;

.field private mDrawTouchMask:Z

.field protected mIsDrawingInScreenPreview:Z

.field protected mIsDrawingInThumbnailView:Z

.field protected mIsEditMode:Z

.field private mIsFolmeDown:Z

.field private mMaskColor:I

.field protected mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

.field private mStartShowingTime:J

.field mStateStyle:Lmiuix/animation/IStateStyle;

.field private mTouchSlop:I

.field private mUpState:Lmiuix/animation/controller/AnimState;

.field protected mVisible:Z

.field protected mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;


# direct methods
.method public static synthetic $r8$lambda$tmNs7aYS8CMi_2PpwKbSIBdcl94(Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->lambda$initFolMe$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherRelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    .line 57
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsEditMode:Z

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDisplayTitle:Z

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDownState:Lmiuix/animation/controller/AnimState;

    .line 73
    iput-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mUpState:Lmiuix/animation/controller/AnimState;

    .line 74
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsFolmeDown:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    const/4 p3, 0x0

    .line 56
    iput-boolean p3, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    .line 57
    iput-boolean p3, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsEditMode:Z

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDisplayTitle:Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDownState:Lmiuix/animation/controller/AnimState;

    .line 73
    iput-object v1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mUpState:Lmiuix/animation/controller/AnimState;

    .line 74
    iput-boolean p3, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsFolmeDown:Z

    .line 89
    sget-object v1, Lcom/miui/home/R$styleable;->LauncherAppWidgetHostViewContainer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 90
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDisplayTitle:Z

    if-eqz p3, :cond_0

    .line 92
    new-instance p3, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;-><init>(Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;)V

    iput-object p3, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    .line 94
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mTouchSlop:I

    return-void
.end method

.method private getProviderName()Ljava/lang/String;
    .locals 1

    .line 138
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 139
    instance-of v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 140
    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private initFolMe()V
    .locals 1

    .line 297
    new-instance v0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isWidgetSupportBlur(Landroid/view/View;)Z
    .locals 1

    .line 259
    instance-of p0, p1, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_0

    .line 260
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->supportWidgetBackgroundBlur(Landroid/view/View;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private synthetic lambda$initFolMe$0()V
    .locals 5

    .line 298
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 299
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStateStyle:Lmiuix/animation/IStateStyle;

    .line 300
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "myDown"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v2, 0x3fee666660000000L    # 0.949999988079071

    .line 301
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 302
    invoke-virtual {v0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDownState:Lmiuix/animation/controller/AnimState;

    .line 303
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v2, "myUp"

    invoke-direct {v0, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 304
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mUpState:Lmiuix/animation/controller/AnimState;

    :cond_0
    return-void
.end method

.method private notInServiceDelivery()Z
    .locals 0

    .line 341
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private trackExposeEvent()V
    .locals 6

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsEditMode:Z

    if-nez v2, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    invoke-static {v2, v3, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackExposeMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;J)V

    .line 167
    :cond_0
    iput-wide v4, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 277
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 278
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->folmeDown()V

    :cond_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->folmeUp()V

    :cond_2
    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 224
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDisplayTitle:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 233
    iget-boolean v1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsDrawingInScreenPreview:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsDrawingInThumbnailView:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p2, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    if-eqz v1, :cond_2

    .line 235
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->isWidgetSupportBlur(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    new-instance v1, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    .line 238
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_2
    iget-boolean v1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsDrawingInThumbnailView:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsDrawingInScreenPreview:Z

    if-nez v1, :cond_3

    instance-of v1, p2, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    if-eqz v1, :cond_3

    .line 242
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->isWidgetSupportBlur(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 247
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    invoke-virtual {v1, p2}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isSkipDraw(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    :cond_4
    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 312
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getDrawableState()[I

    move-result-object v0

    .line 313
    sget-object v1, Landroid/widget/RelativeLayout;->PRESSED_STATE_SET:[I

    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/widget/RelativeLayout;->SELECTED_STATE_SET:[I

    .line 314
    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 315
    :goto_1
    iget-boolean v1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDrawTouchMask:Z

    if-eq v1, v0, :cond_2

    .line 316
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDrawTouchMask:Z

    .line 317
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 319
    :cond_2
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    return-void
.end method

.method public folmeDown()V
    .locals 3

    .line 323
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->notInServiceDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.widget"

    const-string v1, "folmeDown"

    .line 324
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStateStyle:Lmiuix/animation/IStateStyle;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDownState:Lmiuix/animation/controller/AnimState;

    const/4 v2, 0x0

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsFolmeDown:Z

    :cond_0
    return-void
.end method

.method public folmeUp()V
    .locals 4

    .line 331
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsFolmeDown:Z

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->notInServiceDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.widget"

    const-string v1, "folmeUp"

    .line 333
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStateStyle:Lmiuix/animation/IStateStyle;

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 335
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStateStyle:Lmiuix/animation/IStateStyle;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mUpState:Lmiuix/animation/controller/AnimState;

    const/4 v2, 0x0

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 336
    iput-boolean v2, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsFolmeDown:Z

    :cond_0
    return-void
.end method

.method protected getBoundsOnScreenInternal(Lcom/miui/home/launcher/HostViewContainer;Landroid/graphics/Rect;)V
    .locals 0

    .line 270
    invoke-interface {p1, p2}, Lcom/miui/home/launcher/HostViewContainer;->getHostViewBoundsOnScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getScreenId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getViewCellX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewCellY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellY()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanY()I

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 102
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->trackExposeEvent()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 114
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 115
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 201
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 202
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDisplayTitle:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onBindElementFinishInflate()V

    :cond_0
    const v0, 0x7f0a0425

    .line 205
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    .line 206
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDisplayTitle:Z

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onBindElementFinishInflate()V

    .line 209
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0606d6

    const/4 v2, 0x0

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mMaskColor:I

    .line 211
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->initFolMe()V

    return-void
.end method

.method public onInvisible()V
    .locals 2

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    .line 150
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 151
    instance-of v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-nez v1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->trackExposeEvent()V

    goto :goto_0

    .line 154
    :cond_0
    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isNeedTrack:Z

    if-eqz v0, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->trackExposeEvent()V

    .line 158
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInvisible "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getProviderName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.widget"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/StartSwitchingNoWordModel;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 109
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    return-void
.end method

.method public onVisible()V
    .locals 2

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisible "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getProviderName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.widget"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object p0, p0, Lcom/miui/launcher/views/LauncherRelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f1103c8

    const v2, 0x7f1103cb

    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 179
    invoke-virtual {v0}, Lcom/miui/home/launcher/TitleTextView;->setTitleDynamicShadow()V

    .line 180
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public performHapticFeedback(II)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 219
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->performHapticFeedback(II)Z

    move-result p0

    return p0
.end method

.method public setEditMode(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 186
    iget-boolean p2, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    if-eqz p2, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->trackExposeEvent()V

    goto :goto_0

    .line 189
    :cond_0
    iget-boolean p2, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    if-eqz p2, :cond_1

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    .line 193
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsEditMode:Z

    .line 194
    iget-boolean p2, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDisplayTitle:Z

    if-eqz p2, :cond_2

    .line 195
    iget-object p0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onEditModeChange(Z)V

    :cond_2
    return-void
.end method

.method public setIsDrawingInScreenPreview(Z)V
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsDrawingInScreenPreview:Z

    .line 346
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 348
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/TitleTextView;->setIsDrawingInScreenPreview(Z)V

    :cond_0
    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsDrawingInThumbnailView:Z

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 354
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 355
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 357
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 0

    return-void
.end method
