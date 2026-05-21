.class public Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;
.super Landroidx/preference/Preference;
.source "TaskStackViewLayoutStyleContainerPreference.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;
.implements Lmiuix/preference/PreferenceStyle;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mHorizontalCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mVerticalCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;


# direct methods
.method public static synthetic $r8$lambda$3Qc5USBl9iFUpdSFFgZoOGnexJE(Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->lambda$initCheckedBox$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QTnVUSqcctyezAdsoLU2AJfbi8c(Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->lambda$initCheckedBox$0(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0174

    .line 38
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private synthetic lambda$initCheckedBox$0(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 71
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$initCheckedBox$1(Ljava/lang/Boolean;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalCheckBox:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalCheckBox:Lmiuix/visual/check/VisualCheckBox;

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public enabledCardStyle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initAnimView()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->initAnimViewForFoldDevice()V

    :cond_0
    return-void
.end method

.method public initAnimViewForFoldDevice()V
    .locals 2

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    const v1, 0x7f0806e9

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    const v1, 0x7f0806e7

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 94
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070626

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAspectRatio(F)V

    .line 96
    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAspectRatio(F)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    const v1, 0x7f0806e8

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    const v1, 0x7f0806e6

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 100
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070625

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAspectRatio(F)V

    .line 102
    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAspectRatio(F)V

    :goto_0
    return-void
.end method

.method public initCheckedBox()V
    .locals 2

    .line 70
    new-instance v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;)V

    new-instance v1, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 44
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    .line 45
    invoke-virtual {p1, p0}, Lmiuix/visual/check/VisualCheckGroup;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    .line 46
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    const v0, 0x7f0a0406

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckBox;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 47
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    const v0, 0x7f0a01ef

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckBox;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 48
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    const v0, 0x7f0a0405

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    .line 49
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    const v0, 0x7f0a01ee

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->initCheckedBox()V

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->initAnimView()V

    return-void
.end method

.method public onCheckedChanged(Lmiuix/visual/check/VisualCheckGroup;I)V
    .locals 1

    const p1, 0x7f0a01ef

    if-eq p2, p1, :cond_1

    const p1, 0x7f0a0406

    if-eq p2, p1, :cond_0

    .line 64
    sget-object p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCheckedChanged error, i="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->setTaskStackViewLayoutStyle(Landroid/content/Context;I)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->setTaskStackViewLayoutStyle(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public resetCheckGroupPadding(Z)V
    .locals 5

    .line 112
    sget-object v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset mVisualCheckGroup padding isLargeWidth :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    if-eqz v0, :cond_2

    const-string v1, "settings_visual_check_group_padding_large_width"

    const-string v2, "settings_visual_check_group_padding_left_or_right"

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/miui/home/launcher/util/DimenUtils1X;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/miui/home/launcher/util/DimenUtils1X;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    .line 117
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/miui/home/launcher/util/DimenUtils1X;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/miui/home/launcher/util/DimenUtils1X;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    :goto_1
    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    .line 120
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    .line 114
    invoke-virtual {v0, v3, v4, p1, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public setHeightWidthRatio(F)V
    .locals 3

    .line 107
    sget-object v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "heightWidthRatio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x3f99999a    # 1.2f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 108
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->resetCheckGroupPadding(Z)V

    return-void
.end method
