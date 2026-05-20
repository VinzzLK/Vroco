.class public Lcom/miui/home/launcher/TransitionEffectThumbnailView;
.super Lcom/miui/home/launcher/ThumbnailView;
.source "TransitionEffectThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCameraDistanceCache:F

.field private mColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private mContext:Landroid/content/Context;

.field private mCurrentSelectedEffect:I

.field private mCurrentSelectedView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mResources:Landroid/content/res/Resources;

.field private mTransEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTransEffectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 35
    iput p2, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedEffect:I

    .line 36
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectMap:Ljava/util/Map;

    .line 37
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectList:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 209
    iput p3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCameraDistanceCache:F

    .line 47
    iput-object p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mContext:Landroid/content/Context;

    .line 48
    move-object p3, p1

    check-cast p3, Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string p3, "layout_inflater"

    .line 49
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mResources:Landroid/content/res/Resources;

    .line 51
    invoke-direct {p0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->initTransitionTypeThumbnailView()V

    .line 52
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/ThumbnailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070716

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 p2, 0x51

    .line 56
    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f080716

    goto :goto_0

    :cond_0
    const p2, 0x7f0806b1

    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->setSeekPointResource(I)V

    .line 58
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 59
    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    const/16 p3, 0x14

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object p2, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 63
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 64
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherStyleCompat;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getLauncherDialogPaddingTop()I

    move-result p2

    invoke-static {p0, p2}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 66
    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getLauncherDialogPaddingBottom()I

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3fcb851f    # 1.59f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private addSpace(Landroid/widget/LinearLayout;)V
    .locals 1

    .line 113
    new-instance v0, Landroid/widget/Space;

    iget-object p0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v0}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 116
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method private getTransitionEffectName(I)Ljava/lang/String;
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getView(I)Landroid/view/View;
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0179

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-ltz p1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f0a03ba

    .line 131
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 132
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setIconDrawable(Landroid/view/View;)V

    .line 134
    iget-object p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspacePreviousTransitionType()I

    move-result p1

    if-ne v1, p1, :cond_1

    .line 135
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setCurrentSelected(Landroid/view/View;)V

    .line 136
    iget-object p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->appendWorkspaceTransitionType(I)V

    .line 137
    iput v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedEffect:I

    goto :goto_0

    .line 139
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mContext:Landroid/content/Context;

    const p1, 0x7f10008b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initTransitionTypeThumbnailView()V
    .locals 6

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setScrollWholeScreen(Z)V

    const/16 v0, 0xa

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setScreenTransitionType(I)I

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setScreenLayoutMode(I)V

    .line 74
    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f030028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 76
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectList:Ljava/util/ArrayList;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectMap:Ljava/util/Map;

    aget-object v4, v1, v0

    aget-object v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setCurrentSelected(Landroid/view/View;)V
    .locals 9

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f0a01f8

    const v4, 0x7f0a03ba

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    iget-object v5, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 185
    iget-object v6, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0606b7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x0

    .line 186
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 187
    iget-object v5, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedView:Landroid/view/View;

    iget-object v6, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mContext:Landroid/content/Context;

    const v7, 0x7f10008b

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 190
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 191
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 192
    iget-object v4, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0606b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v4, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 194
    iput-object p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedView:Landroid/view/View;

    .line 195
    iget-object p0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mContext:Landroid/content/Context;

    const v3, 0x7f100068

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setIconDrawable(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a00ab

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 147
    sget-object v1, Lcom/miui/home/launcher/ThumbnailViewAdapter;->THUMBNAIL_BACKGROUND:[I

    sget v2, Lcom/miui/home/launcher/ThumbnailView;->CURR_ICON_DRAWABLE_INDEX:I

    aget v1, v1, v2

    .line 148
    iget-object v2, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0a01f8

    .line 152
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 153
    iget-object p0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mEffectsDrawableIds:[I

    aget v0, v1, v0

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 153
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected adaptThumbnailItemStyle()V
    .locals 0

    return-void
.end method

.method protected clearThumbnail(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x0

    .line 220
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a01f8

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 222
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 159
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 166
    iget v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedEffect:I

    if-eq v1, v0, :cond_2

    .line 167
    iget-object v2, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Launcher;->removeWorkspaceTransitionType(I)V

    .line 168
    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->appendWorkspaceTransitionType(I)V

    .line 169
    iput v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedEffect:I

    .line 170
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setCurrentSelected(Landroid/view/View;)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isShowingTransitionEffectDemo()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 174
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->autoScrollWorkspace()V

    return-void
.end method

.method public prepareToShow()V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->reLoadThumbnails()V

    return-void
.end method

.method public reLoadThumbnails()V
    .locals 6

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->removeAllScreens()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedEffect:I

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d017a

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v3, v2

    .line 89
    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 90
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->getView(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->addSpace(Landroid/widget/LinearLayout;)V

    .line 95
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    iget-object v5, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_1

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->addSpace(Landroid/widget/LinearLayout;)V

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    .line 101
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 103
    :cond_1
    iget-object v5, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_2

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->addSpace(Landroid/widget/LinearLayout;)V

    .line 107
    :cond_2
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    return-void
.end method

.method public saveSelectedMode()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getPreviousScreenTransitionType()I

    move-result v1

    .line 228
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getScreenTransitionType()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 230
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->getTransitionEffectName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackTransitionEffectChanged(Ljava/lang/String;)V

    .line 231
    iget-object p0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_key_transformation_type"

    invoke-static {p0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->setTransitionEffectEditingMode()V

    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1

    .line 212
    iget v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCameraDistanceCache:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 213
    iput p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCameraDistanceCache:F

    .line 214
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setCameraDistance(F)V

    :cond_0
    return-void
.end method
