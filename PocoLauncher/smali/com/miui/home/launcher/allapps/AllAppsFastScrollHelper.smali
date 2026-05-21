.class public Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;
.super Ljava/lang/Object;
.source "AllAppsFastScrollHelper.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;


# instance fields
.field private itemAlpha:F

.field private mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

.field private mCurrentFastScrollSection:Ljava/lang/String;

.field private mFastScrollFrameIndex:I

.field private final mFastScrollFrames:[I

.field private mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

.field private mHasFastScrollTouchSettled:Z

.field private mHasFastScrollTouchSettledAtLeastOnce:Z

.field private mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

.field private mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

.field private mTargetFastScrollPosition:I

.field private mTargetFastScrollSection:Ljava/lang/String;

.field private mTrackedFastScrollViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 50
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    const v0, 0x3e99999a    # 0.3f

    .line 51
    iput v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->itemAlpha:F

    .line 57
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;-><init>(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$2;-><init>(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    .line 84
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    return p0
.end method

.method static synthetic access$008(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)I
    .locals 2

    .line 26
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)[I
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    return p1
.end method

.method static synthetic access$702(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    return p1
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    return-void
.end method

.method private resetTrackedViewsFastScrollFocusState()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 232
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->resetTrackedViewsFastScrollFocusState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetTrackedViewsFastScrollFocusState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 237
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private smoothSnapToPosition(IILcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;)V
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 118
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    goto :goto_1

    .line 130
    :cond_0
    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    .line 131
    iget-object v0, p3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    .line 132
    iput-boolean v2, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    .line 133
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    .line 139
    iget-boolean v3, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    if-eqz v3, :cond_1

    const-wide/16 v3, 0xc8

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x64

    .line 138
    :goto_0
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 148
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v0

    .line 149
    iget-object v1, p3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_2

    move p3, v2

    goto :goto_2

    .line 152
    :cond_2
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p3, v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_2
    if-le p1, p2, :cond_3

    .line 155
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollTo(II)V

    move p1, p2

    .line 158
    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    array-length p2, p2

    sub-int/2addr p3, p1

    add-int/lit8 p3, p3, 0x2

    int-to-float p1, p3

    .line 160
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-double v0, p1

    .line 161
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p2

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    mul-double/2addr v0, v3

    double-to-int v0, v0

    move v1, v2

    :goto_3
    if-ge v1, p2, :cond_4

    .line 164
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    aput v4, v3, v1

    sub-int/2addr p3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 167
    :cond_4
    iput v2, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    .line 168
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTrackedViewsFastScrollFocusState()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 216
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTrackedViewsFastScrollFocusState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 221
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v2, v0

    .line 227
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v2, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->itemAlpha:F

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public onBindView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->resetTrackedViewsFastScrollFocusState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 199
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_1
    return-void
.end method

.method public onDataChanged()V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->onFastScrollCompleted()V

    return-void
.end method

.method onFastScrollCompleted()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    .line 181
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    const/4 v0, -0x1

    .line 184
    iput v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    .line 186
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->resetTrackedViewsFastScrollFocusState()V

    return-void
.end method

.method onSetAdapter(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V
    .locals 0

    .line 88
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setBindViewCallback(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;)V

    return-void
.end method

.method public onViewRecycle(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 208
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->itemAlpha:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method setAllTrackedViewsFastScrollFocusState(Z)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 242
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->itemAlpha:F

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method smoothScrollToSection(IILcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;)Z
    .locals 2

    .line 98
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    iget-object v1, p3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    if-eq v0, v1, :cond_0

    .line 99
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/DrawScrollToSectionEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/DrawScrollToSectionEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 100
    iget-object v0, p3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    iget v0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    iput v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->smoothSnapToPosition(IILcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;)V

    const/4 p0, 0x1

    return p0

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    const/4 p0, 0x0

    return p0
.end method
