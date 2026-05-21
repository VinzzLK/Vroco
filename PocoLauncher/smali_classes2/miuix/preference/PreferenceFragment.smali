.class public abstract Lmiuix/preference/PreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PreferenceFragment.java"

# interfaces
.implements Lmiuix/appcompat/app/IFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/PreferenceFragment$FrameDecoration;,
        Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;
    }
.end annotation


# instance fields
.field private mAdapterInvalid:Z

.field private mCardStyle:I

.field private mConfigChangeUpdateViewEnable:Z

.field protected mContentInset:Landroid/graphics/Rect;

.field private mCurSelectedItem:I

.field private mDeviceType:I

.field private mExtraHorizontalPadding:I

.field private mExtraPaddingEnable:Z

.field private mExtraPaddingInitEnable:Z

.field private mExtraPaddingObserver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/container/ExtraPaddingObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

.field private mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

.field private mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

.field private mIsEnableCardStyle:Z

.field private mIsOverlayMode:Z

.field private mItemSelectable:Z

.field private mListContainer:Landroid/view/View;

.field private mListViewPaddingBottom:I

.field private mUserExtraPaddingPolicy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 105
    const-class v0, Lmiuix/preference/flexible/DropdownPreferenceTemplate;

    const-string v1, "dropdownPreference"

    invoke-static {v1, v0}, Lmiuix/flexible/template/TemplateFactory;->registerTemplate(Ljava/lang/String;Ljava/lang/Class;)V

    .line 106
    const-class v0, Lmiuix/preference/flexible/TextPreferenceTemplate;

    const-string v1, "textPreference"

    invoke-static {v1, v0}, Lmiuix/flexible/template/TemplateFactory;->registerTemplate(Ljava/lang/String;Ljava/lang/Class;)V

    .line 107
    const-class v0, Lmiuix/preference/flexible/RadioButtonPreferenceTemplate;

    const-string v1, "radioButtonPreference"

    invoke-static {v1, v0}, Lmiuix/flexible/template/TemplateFactory;->registerTemplate(Ljava/lang/String;Ljava/lang/Class;)V

    .line 108
    const-class v0, Lmiuix/preference/flexible/MiuixPreferenceTemplate;

    const-string v1, "preference"

    invoke-static {v1, v0}, Lmiuix/flexible/template/TemplateFactory;->registerTemplate(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 68
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    const/4 v1, 0x1

    .line 89
    iput-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    .line 90
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    const/4 v2, -0x1

    .line 91
    iput v2, p0, Lmiuix/preference/PreferenceFragment;->mCurSelectedItem:I

    .line 92
    iput-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    .line 93
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    .line 98
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    return-void
.end method

.method static synthetic access$100(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceFragment$FrameDecoration;
    .locals 0

    .line 68
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/preference/PreferenceFragment;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z

    return p0
.end method

.method static synthetic access$1100(Lmiuix/preference/PreferenceFragment;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    return p0
.end method

.method static synthetic access$1200(Lmiuix/preference/PreferenceFragment;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->isDisableAllCardStyle()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lmiuix/preference/PreferenceFragment;)I
    .locals 0

    .line 68
    iget p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    return p0
.end method

.method static synthetic access$200(Lmiuix/preference/PreferenceFragment;)Lmiuix/container/ExtraPaddingPolicy;
    .locals 0

    .line 68
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)Z
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/preference/PreferenceFragment;->updateExtraPaddingHorizontal(Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lmiuix/preference/PreferenceFragment;)Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;
    .locals 0

    .line 68
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    return-object p0
.end method

.method private initExtraPaddingPolicy()V
    .locals 3

    .line 326
    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    sget v1, Lmiuix/theme/token/ContainerToken;->PADDING_BASE_DP:I

    sget v2, Lmiuix/theme/token/ContainerToken;->PADDING_HORIZONTAL_COMMON:I

    .line 327
    invoke-static {v0, v1, v2}, Lmiuix/container/ExtraPaddingPolicy$Builder;->createDefault(III)Lmiuix/container/ExtraPaddingPolicy;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v0, :cond_1

    .line 332
    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    invoke-virtual {v0, v1}, Lmiuix/container/ExtraPaddingPolicy;->setEnable(Z)V

    .line 333
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 334
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v1}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v1}, Lmiuix/container/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    :cond_1
    :goto_0
    return-void
.end method

.method private isDisableAllCardStyle()Z
    .locals 1

    .line 1403
    iget p0, p0, Lmiuix/preference/PreferenceFragment;->mCardStyle:I

    const/4 v0, -0x1

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTabletOrFold()Z
    .locals 1

    .line 833
    iget p0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

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

.method private setActionBarOverLayoutBg()V
    .locals 6

    .line 259
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z

    if-eqz v0, :cond_6

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 265
    sget v2, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 267
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/preference/R$attr;->preferenceCardPageBackground:I

    invoke-static {v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 268
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->isInFloatingWindowMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lmiuix/preference/R$attr;->preferenceCardPageNoFloatingBackground:I

    invoke-static {v3, v4}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v2, v3

    :cond_1
    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 282
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 286
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v4

    :goto_1
    const/high16 v5, 0x8000000

    and-int/2addr p0, v5

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    if-eqz v0, :cond_6

    if-nez v3, :cond_6

    .line 291
    instance-of p0, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p0, :cond_6

    .line 292
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_6
    return-void
.end method

.method private updateActionBarOverlay()V
    .locals 3

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 240
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_0

    .line 241
    move-object v1, v0

    check-cast v1, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v1}, Lmiuix/appcompat/app/IFragment;->hasActionBar()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 249
    invoke-interface {v1}, Lmiuix/appcompat/app/IFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_2

    .line 251
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    .line 254
    sget v1, Lmiuix/preference/R$attr;->windowActionBarOverlay:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    :cond_3
    return-void
.end method

.method private updateExtraPaddingHorizontal(Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)Z
    .locals 8

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {p1, v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p1

    if-nez p3, :cond_0

    .line 346
    iget-object p3, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    :cond_0
    move v4, p3

    if-nez p4, :cond_1

    .line 349
    iget-object p3, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->y:I

    :cond_1
    move v5, p4

    .line 351
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 352
    iget-object p1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    .line 355
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->isInFloatingWindowMode()Z

    move-result v7

    move-object v1, p2

    move v6, p3

    .line 352
    invoke-virtual/range {v1 .. v7}, Lmiuix/container/ExtraPaddingPolicy;->onContainerSizeChanged(IIIIFZ)V

    .line 357
    invoke-virtual {p2}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 358
    invoke-virtual {p2}, Lmiuix/container/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 362
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPadding(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 2

    .line 487
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 488
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez v0, :cond_0

    .line 489
    instance-of v1, p0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 490
    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    return-object p0

    .line 491
    :cond_0
    instance-of p0, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz p0, :cond_1

    .line 492
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0}, Lmiuix/appcompat/app/IFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .locals 2

    .line 513
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 514
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 515
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getContentInset()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    goto :goto_0

    .line 517
    :cond_0
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_1

    .line 518
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0}, Lmiuix/appcompat/app/IContentInsetState;->getContentInset()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    .line 521
    :cond_1
    :goto_0
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getExtraHorizontalPadding()I
    .locals 0

    .line 217
    iget p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    return p0
.end method

.method protected getListViewPaddingBottom()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected getListViewPaddingTop()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 0

    .line 675
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public hasActionBar()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isConfigChangeUpdateViewEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isInFloatingWindowMode()Z
    .locals 1

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 300
    instance-of v0, p0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 301
    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .line 765
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 766
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 769
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 771
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->setActionBarOverLayoutBg()V

    .line 772
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v0

    .line 773
    iget v1, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    if-eq v1, v0, :cond_6

    .line 774
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    .line 775
    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mUserExtraPaddingPolicy:Z

    if-nez v1, :cond_1

    .line 776
    sget v1, Lmiuix/theme/token/ContainerToken;->PADDING_BASE_DP:I

    sget v2, Lmiuix/theme/token/ContainerToken;->PADDING_HORIZONTAL_COMMON:I

    .line 777
    invoke-static {v0, v1, v2}, Lmiuix/container/ExtraPaddingPolicy$Builder;->createDefault(III)Lmiuix/container/ExtraPaddingPolicy;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    .line 782
    :cond_1
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v0, :cond_6

    .line 783
    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    invoke-virtual {v0, v1}, Lmiuix/container/ExtraPaddingPolicy;->setEnable(Z)V

    .line 785
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 786
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v2, v2}, Lmiuix/preference/PreferenceFragment;->updateExtraPaddingHorizontal(Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)Z

    move-result p1

    goto :goto_1

    .line 788
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 790
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v0}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v0}, Lmiuix/container/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_0

    :cond_3
    move p1, v1

    .line 795
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPadding(I)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_6

    .line 798
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getExtraHorizontalPadding()I

    move-result p1

    .line 799
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    if-eqz v0, :cond_4

    .line 800
    invoke-virtual {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->setExtraHorizontalPadding(I)Z

    .line 802
    :cond_4
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 803
    :goto_2
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 804
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/container/ExtraPaddingObserver;

    invoke-interface {v0, p1}, Lmiuix/container/ExtraPaddingObserver;->onExtraPaddingChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 807
    :cond_5
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->onExtraPaddingChanged(I)V

    .line 813
    :cond_6
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->isTabletOrFold()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mConfigChangeUpdateViewEnable:Z

    if-nez p1, :cond_7

    goto :goto_3

    .line 816
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    .line 820
    :cond_8
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    if-eqz v0, :cond_9

    .line 821
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->initMaskPadding(Landroid/content/Context;)V

    .line 822
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-virtual {v0}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->updateClipPaintColor()V

    .line 823
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    if-eqz v0, :cond_9

    .line 824
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->initAttr(Landroid/content/Context;)V

    .line 825
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    iget-object v2, p1, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$600(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v3

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 826
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$700(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v4

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$800(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v5

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$900(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v6

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    iget v7, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardRadius:I

    .line 825
    invoke-virtual/range {v1 .. v7}, Lmiuix/preference/PreferenceGroupAdapter;->setClipPaint(Landroid/graphics/Paint;IIIII)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .locals 5

    .line 553
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 554
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 556
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 557
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getContentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 561
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 562
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 563
    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 564
    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 565
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 566
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 567
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 568
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 569
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget p0, p0, Lmiuix/preference/PreferenceFragment;->mListViewPaddingBottom:I

    add-int/2addr p1, p0

    .line 568
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 571
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 572
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lmiuix/preference/PreferenceFragment;->mListViewPaddingBottom:I

    add-int/2addr p1, p0

    .line 571
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 113
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->isConfigChangeUpdateViewEnable()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mConfigChangeUpdateViewEnable:Z

    .line 115
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 117
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowExtraPaddingHorizontalEnable:I

    iget-boolean v2, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 119
    invoke-virtual {p0, v1}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPaddingEnable(Z)V

    .line 120
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowExtraPaddingHorizontalInitEnable:I

    iget-boolean v2, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 121
    invoke-virtual {p0, v1}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPaddingInitEnable(Z)V

    .line 122
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    sget v0, Lmiuix/preference/R$attr;->preferenceCardStyleEnable:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mCardStyle:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 124
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result p1

    if-le p1, v1, :cond_0

    iget p1, p0, Lmiuix/preference/PreferenceFragment;->mCardStyle:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z

    :cond_2
    return-void
.end method

.method protected final onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 7

    .line 442
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter;

    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z

    iget v2, p0, Lmiuix/preference/PreferenceFragment;->mCardStyle:I

    invoke-direct {v0, p1, v1, v2}, Lmiuix/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;ZI)V

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    .line 443
    iget-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    invoke-virtual {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->setItemSelectable(Z)V

    .line 444
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    invoke-virtual {p1, v0}, Lmiuix/preference/PreferenceGroupAdapter;->setExtraHorizontalPadding(I)Z

    .line 445
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    .line 446
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    if-eqz p1, :cond_1

    .line 447
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    iget-object v1, p1, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$600(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v2

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 448
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$700(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v3

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$800(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v4

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$900(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v5

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    iget v6, p1, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardRadius:I

    .line 447
    invoke-virtual/range {v0 .. v6}, Lmiuix/preference/PreferenceGroupAdapter;->setClipPaint(Landroid/graphics/Paint;IIIII)V

    .line 451
    :cond_1
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    return-object p0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 4

    .line 377
    sget p3, Lmiuix/preference/R$layout;->miuix_preference_recyclerview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 379
    instance-of p3, p1, Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    .line 380
    move-object p3, p1

    check-cast p3, Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 382
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 383
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 384
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getListViewPaddingTop()I

    move-result v0

    .line 385
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getListViewPaddingBottom()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 386
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 387
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    :cond_2
    iput v1, p0, Lmiuix/preference/PreferenceFragment;->mListViewPaddingBottom:I

    .line 388
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lmiuix/preference/PreferenceFragment;->mListViewPaddingBottom:I

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/4 v0, 0x1

    .line 389
    invoke-static {p1, v0}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnable(Landroid/view/View;Z)V

    .line 390
    new-instance v0, Lmiuix/preference/PreferenceFragment$FrameDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;-><init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/preference/PreferenceFragment$1;)V

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 391
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 392
    new-instance p3, Lmiuix/recyclerview/card/CardDefaultItemAnimator;

    invoke-direct {p3}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 393
    iput-object p2, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    .line 394
    new-instance p3, Lmiuix/preference/PreferenceFragment$1;

    invoke-direct {p3, p0}, Lmiuix/preference/PreferenceFragment$1;-><init>(Lmiuix/preference/PreferenceFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 434
    instance-of p0, p2, Lmiuix/springback/view/SpringBackLayout;

    if-eqz p0, :cond_3

    .line 435
    check-cast p2, Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, p1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    :cond_3
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 130
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->updateActionBarOverlay()V

    .line 131
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->setActionBarOverLayoutBg()V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    .line 134
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mUserExtraPaddingPolicy:Z

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->initExtraPaddingPolicy()V

    .line 137
    :cond_0
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 140
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 141
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 142
    :cond_2
    iget-object v3, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-direct {p0, v0, v3, v2, v1}, Lmiuix/preference/PreferenceFragment;->updateExtraPaddingHorizontal(Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)Z

    .line 145
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 720
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 721
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 722
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 724
    :cond_0
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiuix/preference/PreferenceFragment;->unregisterCoordinateScrollView(Landroid/view/View;)V

    return-void
.end method

.method public onDispatchNestedScrollOffset([I)V
    .locals 0

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 3

    .line 841
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 843
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 845
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    .line 846
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 847
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 855
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    .line 860
    :cond_3
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_4

    .line 861
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    .line 862
    :cond_4
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 863
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/ListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    .line 864
    :cond_5
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_6

    .line 865
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    move-result-object p1

    .line 873
    :goto_1
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 874
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 867
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot display dialog for an unknown Preference type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onExtraPaddingChanged(I)V
    .locals 0

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 886
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->setSelectedPreference(Landroidx/preference/Preference;)V

    .line 889
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStop()V
    .locals 0

    .line 150
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    .line 151
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->stopHighlight()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 469
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 470
    iget-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    if-eqz p1, :cond_0

    .line 471
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->registerCoordinateScrollView(Landroid/view/View;)V

    .line 472
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 473
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getContentInset()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 475
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public registerCoordinateScrollView(Landroid/view/View;)V
    .locals 0

    .line 498
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 500
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBar;->registerCoordinateScrollView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setExtraHorizontalPadding(I)Z
    .locals 1

    .line 208
    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    if-eq v0, p1, :cond_0

    .line 209
    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    .line 196
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz p0, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Lmiuix/container/ExtraPaddingPolicy;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setExtraHorizontalPaddingInitEnable(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    return-void
.end method

.method public stopHighlight()V
    .locals 0

    .line 750
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    if-eqz p0, :cond_0

    .line 751
    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight()V

    :cond_0
    return-void
.end method

.method public unregisterCoordinateScrollView(Landroid/view/View;)V
    .locals 0

    .line 505
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 507
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBar;->unregisterCoordinateScrollView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
