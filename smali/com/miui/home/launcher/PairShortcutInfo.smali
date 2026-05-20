.class public Lcom/miui/home/launcher/PairShortcutInfo;
.super Lcom/miui/home/launcher/ShortcutInfo;
.source "PairShortcutInfo.java"


# instance fields
.field protected mIconDrawable1:Landroid/graphics/drawable/Drawable;

.field protected mIconDrawable2:Landroid/graphics/drawable/Drawable;

.field private mPairBitmap:Landroid/graphics/Bitmap;

.field private final mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

.field private final mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public static synthetic $r8$lambda$Gfyy8GEPoIPQehdC-O4djyyyWFQ(Lcom/miui/home/launcher/PairShortcutInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/PairShortcutInfo;->lambda$getPairIconAsync$1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jnk9V1eh3LuiNCtXdQ2MRU0Jb4s(Lcom/miui/home/launcher/PairShortcutInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/PairShortcutInfo;->lambda$getPairIconAsync$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    .line 26
    iput-object p2, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    .line 27
    invoke-direct {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->resetInfo()V

    .line 28
    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 29
    invoke-direct {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->fillIntentIfNeed()V

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setHideApplicationMessage(Z)V

    return-void
.end method

.method private fillIntentIfNeed()V
    .locals 3

    .line 45
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->getUserId()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/miui/home/recents/util/PairUtils;->initAppPairIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private synthetic lambda$getPairIconAsync$0(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable1:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->updatePairIconDrawable()V

    return-void
.end method

.method private synthetic lambda$getPairIconAsync$1(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable2:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->updatePairIconDrawable()V

    return-void
.end method

.method private resetInfo()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 35
    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const/4 v2, -0x1

    .line 36
    iput v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p0, :cond_0

    .line 38
    iput v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 39
    iput v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 40
    iput v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    :cond_0
    return-void
.end method


# virtual methods
.method public canAcceptByHotSeats()Z
    .locals 4

    .line 89
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutInfo;->canAcceptByHotSeats()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x67

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createPairBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getPairIconBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/PairUtils;->createPairBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mPairBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getExtraPairPackageName()Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconDrawable1()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable1:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconDrawable2()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable2:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getPairBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mPairBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getPairIconAsync(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IconCache;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getIconDrawable1()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/PairShortcutInfo$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/PairShortcutInfo$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/PairShortcutInfo;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getIconDrawable2()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/PairShortcutInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/PairShortcutInfo$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/PairShortcutInfo;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getPairName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->hasPairApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003d8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    .line 73
    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitleStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitleStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitleStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0
.end method

.method public getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0
.end method

.method public hasPairApp()Z
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPairIcon()Z
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->hasPairApp()Z

    move-result p0

    return p0
.end method

.method public updatePairIconDrawable()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable1:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable2:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->createPairBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method
