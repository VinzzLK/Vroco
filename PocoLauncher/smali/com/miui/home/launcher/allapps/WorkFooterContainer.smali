.class public Lcom/miui/home/launcher/allapps/WorkFooterContainer;
.super Landroid/widget/RelativeLayout;
.source "WorkFooterContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;
    }
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mIsWorkModeOff:Z

.field private mWorkModeOff:Landroid/widget/LinearLayout;

.field private mWorkModeOffDetailText:Landroid/widget/TextView;

.field private mWorkModeOffText:Landroid/widget/TextView;

.field private mWorkModeToggleOff:Landroid/widget/LinearLayout;

.field private mWorkModeToggleOffText:Landroid/widget/TextView;

.field private mWorkModeToggleOn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/WorkFooterContainer;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOn:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/WorkFooterContainer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOff:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private refreshViewColorAndBackground()V
    .locals 4

    .line 97
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeOffText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_1

    const v3, 0x7f0606dc

    goto :goto_0

    :cond_1
    const v3, 0x7f0606dd

    :goto_0
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeOffDetailText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_2

    const v3, 0x7f0606da

    goto :goto_1

    :cond_2
    const v3, 0x7f0606db

    :goto_1
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOn:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_3

    const v3, 0x7f0606df

    goto :goto_2

    :cond_3
    const v3, 0x7f0606e0

    :goto_2
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOn:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_4

    const v3, 0x7f08070e

    goto :goto_3

    :cond_4
    const v3, 0x7f08070f

    :goto_3
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOff:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_5

    const v0, 0x7f08070c

    goto :goto_4

    :cond_5
    const v0, 0x7f08070d

    :goto_4
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 116
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 109
    iget-boolean p1, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mIsWorkModeOff:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mIsWorkModeOff:Z

    .line 110
    new-instance p1, Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;

    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mIsWorkModeOff:Z

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;-><init>(ZLjava/lang/ref/WeakReference;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 124
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x1020006

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0432

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeOff:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0435

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOffText:Landroid/widget/TextView;

    const v0, 0x7f0a0434

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOff:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0436

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOn:Landroid/widget/TextView;

    const v0, 0x7f0a0433

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeOffText:Landroid/widget/TextView;

    const v0, 0x7f0a0431

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeOffDetailText:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOff:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOffText:Landroid/widget/TextView;

    sget-object v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->STRING_CACHE:Lcom/miui/home/launcher/allapps/StringCache;

    iget-object v2, v1, Lcom/miui/home/launcher/allapps/StringCache;->workProfilePauseButton:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeOffText:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/miui/home/launcher/allapps/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeOffDetailText:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/miui/home/launcher/allapps/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOn:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/miui/home/launcher/allapps/StringCache;->workProfileEnableButton:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOff:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07074e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOff:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0606de

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOutlineAmbientShadowColor(I)V

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOff:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOutlineSpotShadowColor(I)V

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->refreshViewStatus()V

    .line 76
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->refreshViewColorAndBackground()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 136
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->refreshViewColorAndBackground()V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/UserQuietModeChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->refreshViewStatus()V

    return-void
.end method

.method public refreshViewStatus()V
    .locals 4

    .line 80
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->isAnyProfileQuietModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mIsWorkModeOff:Z

    .line 81
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 85
    :cond_0
    iget-boolean v2, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mIsWorkModeOff:Z

    if-eqz v2, :cond_1

    const/4 v1, -0x1

    :cond_1
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 86
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeOff:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 88
    iget-boolean v3, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mIsWorkModeOff:Z

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mWorkModeToggleOff:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 91
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mIsWorkModeOff:Z

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method
