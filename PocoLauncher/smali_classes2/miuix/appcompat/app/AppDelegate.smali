.class Lmiuix/appcompat/app/AppDelegate;
.super Lmiuix/appcompat/app/ActionBarDelegateImpl;
.source "AppDelegate.java"

# interfaces
.implements Lmiuix/responsive/interfaces/IResponsive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/ActionBarDelegateImpl;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

.field private final mActivityIdentity:Ljava/lang/String;

.field private mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

.field private mContentParent:Landroid/view/ViewGroup;

.field private mDelegateFinished:Z

.field private mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

.field private mFloatingRoot:Landroid/view/ViewGroup;

.field private mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

.field private final mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field private mIsFloatingTheme:Z

.field private mIsFloatingWindow:Z

.field private mIsUserResponsiveEnabled:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

.field private mSplitActionBarEnable:Z

.field private mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUIMode:I

.field private mUserIsFloatingWindow:Ljava/lang/Boolean;

.field mWindow:Landroid/view/Window;


# direct methods
.method public static synthetic $r8$lambda$Y9cMbGZmaai_R4QszaOvt4VGD6I(Lmiuix/appcompat/app/AppDelegate;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/ActivityCallback;Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;)V
    .locals 2

    .line 97
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsUserResponsiveEnabled:Z

    .line 81
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    .line 82
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mUserIsFloatingWindow:Ljava/lang/Boolean;

    .line 86
    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    .line 88
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mDelegateFinished:Z

    .line 691
    new-instance p1, Lmiuix/appcompat/app/AppDelegate$3;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AppDelegate$3;-><init>(Lmiuix/appcompat/app/AppDelegate;)V

    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityIdentity:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 100
    iput-object p3, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/AppDelegate;)Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;
    .locals 0

    .line 71
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/app/AppDelegate;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    return p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/app/AppDelegate;)Lmiuix/appcompat/app/ActivityCallback;
    .locals 0

    .line 71
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    return-object p0
.end method

.method private attachToWindow(Landroid/view/Window;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 191
    instance-of v2, v0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    if-nez v2, :cond_0

    .line 195
    new-instance v1, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-direct {v1, p0, v0}, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;-><init>(Lmiuix/appcompat/app/AppDelegate;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    .line 197
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 199
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    return-void

    .line 192
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private ensureWindow()V
    .locals 1

    .line 173
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AppDelegate;->attachToWindow(Landroid/view/Window;)V

    .line 179
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    if-eqz p0, :cond_2

    return-void

    .line 180
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "We have not been given a Window"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getDecorViewLayoutRes(Landroid/view/Window;)I
    .locals 4

    .line 657
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 659
    sget v1, Lmiuix/appcompat/R$attr;->windowActionBar:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 660
    sget v1, Lmiuix/appcompat/R$attr;->windowActionBarMovable:I

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_action_bar_movable:I

    goto :goto_0

    .line 663
    :cond_0
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_action_bar:I

    goto :goto_0

    .line 666
    :cond_1
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_simple:I

    .line 669
    :goto_0
    sget v3, Lmiuix/appcompat/R$attr;->startingWindowOverlay:I

    invoke-static {v0, v3}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v3

    if-lez v3, :cond_2

    .line 671
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->isSystemProcess()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Lmiuix/appcompat/app/AppDelegate;->isWindowActionBarEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v3

    .line 675
    :cond_2
    invoke-virtual {p1}, Landroid/view/Window;->isFloating()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    instance-of p0, p0, Landroid/app/Dialog;

    if-eqz p0, :cond_3

    .line 676
    sget p0, Lmiuix/appcompat/R$attr;->windowTranslucentStatus:I

    invoke-static {v0, p0, v2}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p0

    .line 678
    invoke-static {p1, p0}, Lmiuix/core/util/variable/WindowWrapper;->setTranslucentStatus(Landroid/view/Window;I)Z

    :cond_3
    return v1
.end method

.method private installSubDecor()V
    .locals 6

    .line 334
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->ensureWindow()V

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 340
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 343
    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget-object v3, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 345
    sget v3, Lmiuix/appcompat/R$styleable;->Window_responsiveEnabled:I

    iget-boolean v4, p0, Lmiuix/appcompat/app/AppDelegate;->mIsUserResponsiveEnabled:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    new-instance v3, Lmiuix/appcompat/app/AppDelegate$1;

    invoke-direct {v3, p0, p0}, Lmiuix/appcompat/app/AppDelegate$1;-><init>(Lmiuix/appcompat/app/AppDelegate;Lmiuix/responsive/interfaces/IResponsive;)V

    iput-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 354
    :cond_1
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowLayoutMode:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 357
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x50

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    .line 360
    :cond_2
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 365
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    .line 366
    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 368
    :cond_3
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x9

    .line 369
    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 371
    :cond_4
    sget v3, Lmiuix/appcompat/R$styleable;->Window_isMiuixFloatingTheme:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    .line 372
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowFloating:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 374
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setTranslucentStatus(I)V

    .line 377
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    iput v3, p0, Lmiuix/appcompat/app/AppDelegate;->mUIMode:I

    .line 380
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AppDelegate;->installToDecor(Landroid/view/Window;)V

    .line 382
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_5

    .line 383
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 384
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setContentInsetStateCallback(Lmiuix/appcompat/app/IContentInsetState;)V

    .line 385
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->addExtraPaddingObserver(Lmiuix/container/ExtraPaddingObserver;)V

    .line 386
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 390
    :cond_5
    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_c

    .line 391
    sget v3, Lmiuix/appcompat/R$id;->action_bar_container:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 392
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 393
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    sget v3, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 394
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 395
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 401
    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    if-eqz v1, :cond_6

    .line 402
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initIndeterminateProgress()V

    .line 406
    :cond_6
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isEndActionMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 407
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEndActionMenuEnable(Z)V

    .line 412
    :cond_7
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 413
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v3

    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 418
    :cond_8
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v1

    const-string v3, "splitActionBarWhenNarrow"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 421
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    goto :goto_0

    .line 423
    :cond_9
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    .line 426
    :goto_0
    iget-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    if-eqz v3, :cond_a

    .line 427
    iget-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, v0, v1, v3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 431
    :cond_a
    sget v1, Lmiuix/appcompat/R$styleable;->Window_endActionMenuEnabled:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 432
    sget v1, Lmiuix/appcompat/R$styleable;->Window_hyperActionMenuEnabled:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 433
    invoke-virtual {p0, v0, v1, v4}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setEndActionMenuEnabled(ZZZ)V

    goto :goto_1

    .line 435
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 439
    :cond_c
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 361
    :cond_d
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 362
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to use a miui theme (or descendant) with this activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private installToDecor(Landroid/view/Window;)V
    .locals 7

    .line 586
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;->get(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 587
    iput-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    .line 589
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->getDecorViewLayoutRes(Landroid/view/Window;)I

    move-result v2

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 590
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v2, :cond_1

    .line 591
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->shouldShowFloatingActivityTabletMode()Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 592
    iget-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setFloatingWindowMode(Z)V

    .line 593
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    iget-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    invoke-virtual {v2, v0, v3}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->replaceSubDecor(Landroid/view/View;Z)Landroid/view/ViewGroup;

    move-result-object v0

    .line 594
    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    .line 595
    iget-boolean v2, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    invoke-direct {p0, v2}, Lmiuix/appcompat/app/AppDelegate;->updateSystemUiStateInFloatingTheme(Z)V

    .line 596
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {v2}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->shouldInterceptBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 597
    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v2

    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    new-instance v4, Lmiuix/appcompat/app/AppDelegate$2;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lmiuix/appcompat/app/AppDelegate$2;-><init>(Lmiuix/appcompat/app/AppDelegate;Z)V

    invoke-virtual {v2, v3, v4}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 605
    :cond_1
    iget-boolean v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mUserExtraPaddingPolicy:Z

    if-nez v2, :cond_2

    .line 606
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->initExtraPaddingPolicy()V

    .line 608
    :cond_2
    sget v2, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 609
    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const v4, 0x1020002

    if-eqz v3, :cond_4

    .line 610
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iput-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 611
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 612
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingEnable:Z

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingEnable(Z)V

    .line 613
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingInitEnable:Z

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingInitEnable(Z)V

    .line 614
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingApplyToContentEnable:Z

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingApplyToContentEnable(Z)V

    .line 615
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getExtraPaddingPolicy()Lmiuix/container/ExtraPaddingPolicy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V

    .line 616
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 617
    invoke-virtual {p1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 619
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    .line 620
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 621
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 622
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    .line 625
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setId(I)V

    .line 626
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 628
    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    .line 629
    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 633
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 635
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_5

    .line 636
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    .line 638
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz p1, :cond_6

    .line 639
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->shouldShowFloatingActivityTabletMode()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->init(Landroid/view/View;Z)V

    :cond_6
    return-void
.end method

.method private isSystemProcess()Z
    .locals 1

    .line 684
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isWindowActionBarEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 688
    sget v0, Lmiuix/appcompat/R$attr;->windowActionBar:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;)V
    .locals 4

    .line 863
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getWindowInfo()Lmiuix/core/util/WindowBaseInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lmiuix/core/util/EnvStateManager;->updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V

    .line 865
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->isInFloatingWindowMode()Z

    move-result v0

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    sget-boolean v1, Lmiuix/os/Build;->IS_FOLDABLE:Z

    invoke-direct {p0, v0, p1, v3, v1}, Lmiuix/appcompat/app/AppDelegate;->setFloatingWindowMode(ZIZZ)V

    return-void
.end method

.method private notifyFloatWindowModeChanged(Z)V
    .locals 0

    .line 537
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

    invoke-interface {p0, p1}, Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;->onFloatingWindowModeChanged(Z)V

    return-void
.end method

.method private setFloatingWindowMode(ZIZZ)V
    .locals 1

    .line 500
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    if-eqz v0, :cond_5

    if-nez p4, :cond_0

    sget-boolean p4, Lmiuix/os/Build;->IS_TABLET:Z

    if-nez p4, :cond_0

    goto :goto_1

    .line 503
    :cond_0
    iget-boolean p4, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    if-eq p4, p1, :cond_4

    iget-object p4, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

    .line 504
    invoke-interface {p4, p1}, Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;->onFloatingWindowModeChanging(Z)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 505
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 507
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setFloatingWindowMode(Z)V

    .line 508
    iget-boolean p2, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AppDelegate;->updateSystemUiStateInFloatingTheme(Z)V

    .line 510
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {p2}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->getFloatingLayoutParam()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 p4, -0x2

    .line 513
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 514
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    const/4 p4, -0x1

    .line 516
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 517
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 521
    :cond_2
    :goto_0
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p2, :cond_3

    .line 522
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 523
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onFloatingModeChanged(Z)V

    :cond_3
    if-eqz p3, :cond_5

    .line 527
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->notifyFloatWindowModeChanged(Z)V

    goto :goto_1

    .line 529
    :cond_4
    iget p3, p0, Lmiuix/appcompat/app/AppDelegate;->mUIMode:I

    if-eq p2, p3, :cond_5

    .line 531
    iput p2, p0, Lmiuix/appcompat/app/AppDelegate;->mUIMode:I

    .line 532
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setFloatingWindowMode(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private shouldShowFloatingActivityTabletMode()Z
    .locals 0

    .line 582
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingModeSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateSystemUiStateInFloatingTheme(Z)V
    .locals 5

    .line 470
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v2, v1, 0x400

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 473
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    move-result p0

    if-eqz p0, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v4

    :goto_1
    if-nez v2, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v4

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v3

    :goto_3
    if-nez p1, :cond_6

    if-eqz p0, :cond_4

    or-int/lit16 p1, v1, 0x400

    goto :goto_4

    :cond_4
    and-int/lit16 p1, v1, -0x401

    :goto_4
    move v1, p1

    if-eqz p0, :cond_5

    .line 484
    invoke-virtual {v0, v4}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    goto :goto_5

    .line 486
    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    goto :goto_5

    :cond_6
    const/high16 p0, 0xc000000

    .line 490
    invoke-virtual {v0, p0}, Landroid/view/Window;->addFlags(I)V

    .line 493
    invoke-virtual {v0, v4}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 496
    :goto_5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 567
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_0

    .line 568
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 570
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-virtual {p0}, Landroidx/appcompat/view/WindowCallbackWrapper;->getWrapped()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public afterConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 818
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    if-eqz p0, :cond_0

    .line 819
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public beforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 812
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    if-eqz p0, :cond_0

    .line 813
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public createActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 2

    .line 204
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 207
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 210
    :cond_1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-direct {v0, v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .locals 0

    .line 849
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppDelegate;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    return-void
.end method

.method public executeCloseEnterAnimation()V
    .locals 0

    .line 776
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz p0, :cond_0

    .line 777
    invoke-interface {p0}, Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;->executeCloseEnterAnimation()V

    :cond_0
    return-void
.end method

.method public executeOpenEnterAnimation()V
    .locals 0

    .line 764
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz p0, :cond_0

    .line 765
    invoke-interface {p0}, Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;->executeOpenEnterAnimation()V

    :cond_0
    return-void
.end method

.method public executeOpenExitAnimation()V
    .locals 0

    .line 770
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz p0, :cond_0

    .line 771
    invoke-interface {p0}, Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;->executeOpenExitAnimation()V

    :cond_0
    return-void
.end method

.method public getActivityIdentity()Ljava/lang/String;
    .locals 0

    .line 1060
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .locals 0

    .line 953
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getFloatingBrightPanel()Landroid/view/View;
    .locals 0

    .line 463
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz p0, :cond_0

    .line 464
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->getFloatingBrightPanel()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    .line 105
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method public getResponsiveSubject()Landroid/app/Activity;
    .locals 0

    .line 829
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getResponsiveSubject()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 0

    .line 216
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 652
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    return-object p0
.end method

.method public hideFloatingBrightPanel()V
    .locals 0

    .line 752
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz p0, :cond_0

    .line 753
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->hideFloatingBrightPanel()V

    :cond_0
    return-void
.end method

.method public hideFloatingDimBackground()V
    .locals 0

    .line 746
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz p0, :cond_0

    .line 747
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->hideFloatingDimBackground()V

    :cond_0
    return-void
.end method

.method public installFloatingSwitcher(ZLandroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 159
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isFromMultiApp(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 915
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public isDelegateFinishing()Z
    .locals 0

    .line 808
    iget-boolean p0, p0, Lmiuix/appcompat/app/AppDelegate;->mDelegateFinished:Z

    return p0
.end method

.method public isFloatingTheme()Z
    .locals 0

    .line 449
    iget-boolean p0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    return p0
.end method

.method public isInFloatingWindowMode()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mUserIsFloatingWindow:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->shouldShowFloatingActivityTabletMode()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 861
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getWindowInfo()Lmiuix/core/util/WindowBaseInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lmiuix/core/util/EnvStateManager;->updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V

    .line 862
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AppDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lmiuix/appcompat/app/AppDelegate$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AppDelegate;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 867
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 868
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mUserExtraPaddingPolicy:Z

    if-nez v0, :cond_0

    .line 869
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v0

    .line 870
    iget v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mDeviceType:I

    if-eq v1, v0, :cond_0

    .line 871
    iput v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mDeviceType:I

    .line 872
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->initExtraPaddingPolicy()V

    .line 873
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 874
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V

    .line 878
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 879
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isImmersionMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 880
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu()V

    :cond_1
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .locals 4

    .line 958
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 959
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 960
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    .line 961
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 963
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 964
    instance-of v3, v2, Lmiuix/appcompat/app/IFragment;

    if-eqz v3, :cond_0

    .line 965
    check-cast v2, Lmiuix/appcompat/app/IFragment;

    .line 967
    invoke-interface {v2}, Lmiuix/appcompat/app/IFragment;->hasActionBar()Z

    move-result v3

    if-nez v3, :cond_0

    .line 968
    invoke-interface {v2, p1}, Lmiuix/appcompat/app/IContentInsetState;->onContentInsetChanged(Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 114
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->checkThemeLegality()V

    .line 115
    sget-boolean v0, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->sIsActionBarClassInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 117
    sput-boolean v1, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->sIsActionBarClassInit:Z

    .line 118
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->preloadClass(Landroid/content/Context;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v2, Lmiuix/appcompat/R$attr;->windowExtraPaddingHorizontal:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v3, v1

    .line 123
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v2, Lmiuix/appcompat/R$attr;->windowExtraPaddingHorizontalEnable:I

    invoke-static {v0, v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    .line 125
    iget-boolean v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingEnable:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 128
    :cond_2
    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v3, Lmiuix/appcompat/R$attr;->windowExtraPaddingHorizontalInitEnable:I

    iget-boolean v4, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingInitEnable:Z

    invoke-static {v2, v3, v4}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v2

    .line 130
    iget-boolean v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingInitEnable:Z

    if-eqz v3, :cond_3

    move v2, v1

    .line 133
    :cond_3
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v4, Lmiuix/appcompat/R$attr;->windowExtraPaddingApplyToContentEnable:I

    iget-boolean v5, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingApplyToContentEnable:Z

    invoke-static {v3, v4, v5}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v3

    .line 135
    iget-boolean v4, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingApplyToContentEnable:Z

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    .line 140
    :goto_0
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppDelegate;->setExtraHorizontalPaddingEnable(Z)V

    .line 141
    invoke-virtual {p0, v2}, Lmiuix/appcompat/app/AppDelegate;->setExtraHorizontalPaddingInitEnable(Z)V

    .line 142
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AppDelegate;->setExtraPaddingApplyToContentEnable(Z)V

    .line 143
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 145
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/app/AppDelegate;->installFloatingSwitcher(ZLandroid/os/Bundle;)V

    return-void
.end method

.method protected onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 0

    .line 707
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 287
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 4

    if-eqz p1, :cond_0

    .line 244
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {p0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isEndActionMenuEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    if-eqz p1, :cond_7

    .line 249
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 252
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    if-nez p1, :cond_2

    .line 255
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p1

    .line 256
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 259
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 261
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v1, v3, p1}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_5

    .line 266
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 268
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v1, v3, v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    .line 276
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_1

    .line 279
    :cond_6
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    :cond_7
    :goto_1
    return-object v0
.end method

.method public onExtraPaddingChanged(I)V
    .locals 0

    .line 976
    iput p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraHorizontalPadding:I

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 302
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ActivityCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return v0

    .line 308
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x102002c

    if-ne p1, p2, :cond_3

    .line 309
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 310
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    .line 312
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_2

    .line 313
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->onNavigateUp()Z

    move-result p1

    goto :goto_0

    .line 315
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_3

    .line 319
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_3
    return v0
.end method

.method public onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1000
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 330
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/app/ActivityCallback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPanelViewAdded(ILandroid/view/View;Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 0

    .line 297
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lmiuix/appcompat/app/ActivityCallback;->onPanelViewAdded(ILandroid/view/View;Landroid/view/Menu;Landroid/view/Menu;)V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    .line 233
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0}, Lmiuix/appcompat/app/ActivityCallback;->onPostResume()V

    .line 235
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 237
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 0

    .line 712
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 292
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {p0, p1, p2, p3}, Lmiuix/appcompat/app/ActivityCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .locals 1

    .line 854
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    instance-of v0, p0, Lmiuix/responsive/interfaces/IResponsive;

    if-eqz v0, :cond_0

    .line 855
    invoke-interface {p0, p1, p2, p3}, Lmiuix/responsive/interfaces/IResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 903
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 904
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    const-string v0, "miuix:ActionBar"

    .line 905
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 907
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 890
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->onSaveInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    .line 892
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->onSaveInstanceState(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 895
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 896
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 897
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string p0, "miuix:ActionBar"

    .line 898
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 221
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0}, Lmiuix/appcompat/app/ActivityCallback;->onStop()V

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    .line 225
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1005
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    .line 1008
    :cond_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .locals 0

    .line 1122
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_0

    .line 1123
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuCustomView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 541
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_0

    .line 542
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 544
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 545
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 546
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 548
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-virtual {p0}, Landroidx/appcompat/view/WindowCallbackWrapper;->getWrapped()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 552
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AppDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 556
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_0

    .line 557
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 559
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 561
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-virtual {p0}, Landroidx/appcompat/view/WindowCallbackWrapper;->getWrapped()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setEnableSwipToDismiss(Z)V
    .locals 0

    .line 740
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz p0, :cond_0

    .line 741
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setEnableSwipToDismiss(Z)V

    :cond_0
    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .locals 0

    .line 1037
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setExtraHorizontalPaddingEnable(Z)V

    .line 1038
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_0

    .line 1039
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingEnable(Z)V

    :cond_0
    return-void
.end method

.method public setExtraHorizontalPaddingInitEnable(Z)V
    .locals 0

    .line 1045
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setExtraHorizontalPaddingInitEnable(Z)V

    .line 1046
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_0

    .line 1047
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingInitEnable(Z)V

    :cond_0
    return-void
.end method

.method public setExtraPaddingApplyToContentEnable(Z)V
    .locals 0

    .line 1053
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setExtraPaddingApplyToContentEnable(Z)V

    .line 1054
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_0

    .line 1055
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingApplyToContentEnable(Z)V

    :cond_0
    return-void
.end method

.method public setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V
    .locals 0

    .line 722
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz p0, :cond_0

    .line 723
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V

    :cond_0
    return-void
.end method

.method public setResponsiveEnabled(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsUserResponsiveEnabled:Z

    return-void
.end method

.method setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mTitle:Ljava/lang/CharSequence;

    .line 645
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p0, :cond_0

    .line 646
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldDelegateActivityFinish()Z
    .locals 2

    .line 797
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_1

    .line 798
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->delegateFinishFloatingActivityInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 800
    iput-boolean v1, p0, Lmiuix/appcompat/app/AppDelegate;->mDelegateFinished:Z

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public showFloatingBrightPanel()V
    .locals 0

    .line 758
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz p0, :cond_0

    .line 759
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->showFloatingBrightPanel()V

    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 988
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 991
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_1

    .line 992
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
