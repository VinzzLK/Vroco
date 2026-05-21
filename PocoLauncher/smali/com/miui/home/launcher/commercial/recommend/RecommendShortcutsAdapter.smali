.class public Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;
.super Lcom/miui/home/launcher/ThumbnailViewAdapter;
.source "RecommendShortcutsAdapter.java"


# instance fields
.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

.field private mRecommendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    .line 56
    invoke-static {p1}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 57
    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    return-void
.end method

.method private changeLoadingTitleToAdTitleWithAnim(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Ljava/lang/CharSequence;)V
    .locals 5

    const v0, 0x7f0a0203

    .line 134
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 135
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 136
    new-instance v3, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {v3}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xe6

    .line 137
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 138
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    new-array v0, v0, [F

    .line 140
    fill-array-data v0, :array_1

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseInInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseInInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$2;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 148
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 149
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 150
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private changeLoadingViewToAdViewWithAnim(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V
    .locals 1

    .line 105
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->hideLoadingViewWithAnim(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->showAdViewWithAnim(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->changeLoadingTitleToAdTitleWithAnim(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getShortcutIcon(Landroid/view/View;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/BaseProgressShortcutIcon;
    .locals 1

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p2}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    check-cast p1, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    .line 166
    invoke-virtual {p2, p1, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f0d0161

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v0, p3, p2}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    move-result-object p1

    .line 157
    invoke-virtual {p2, p1, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V

    .line 158
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getDefaultLayerType()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p3, 0x1

    .line 159
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/ItemIcon;->setSkipNextAutoLayoutAnimation(Z)V

    const p3, 0x3f4ccccd    # 0.8f

    .line 160
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 161
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 162
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/ItemIcon;->setTouchScaleFactor(F)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 163
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 169
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 171
    invoke-virtual {p2}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->getBuddyIconView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    return-object p0
.end method

.method private hideLoadingViewWithAnim(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V
    .locals 3

    const v0, 0x7f0a0245

    .line 111
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 113
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;Lcom/miui/home/launcher/BaseProgressShortcutIcon;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1cc

    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private needChangeLoadingViewToAdViewWithAnim(Landroid/view/View;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)Z
    .locals 1

    .line 93
    invoke-virtual {p2}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->isLoading()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 95
    instance-of v0, p1, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->isLoading()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-eqz p1, :cond_1

    if-nez p0, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method private showAdViewWithAnim(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V
    .locals 2

    const p0, 0x7f0a01fd

    .line 125
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 126
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    const p1, 0x3f333333    # 0.7f

    .line 128
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 130
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1cc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->getItem(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 179
    invoke-virtual {p1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->isLoading()Z

    move-result v0

    .line 180
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->needChangeLoadingViewToAdViewWithAnim(Landroid/view/View;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)Z

    move-result v1

    .line 181
    invoke-direct {p0, p2, p1, p3}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->getShortcutIcon(Landroid/view/View;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz v1, :cond_1

    .line 184
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->changeLoadingViewToAdViewWithAnim(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0a01fd

    .line 186
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f0a0245

    .line 187
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a0203

    .line 188
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0204

    .line 189
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 190
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v4

    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getRecommendAppGap(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v4, p0

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 p0, 0x8

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 193
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p0, 0x3f000000    # 0.5f

    .line 194
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 195
    invoke-virtual {p2}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->startLoadingAnim()V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 201
    :goto_0
    invoke-virtual {p2, p3, p3}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setEditMode(ZZ)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 3

    const/4 v0, 0x0

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 70
    invoke-virtual {v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v1, v2, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public refreshList()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getFilteredRecommendAppsContents()Ljava/util/ArrayList;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public remove(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->notifyDataSetChanged()V

    return-void
.end method
