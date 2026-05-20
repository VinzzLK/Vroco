.class public Lcom/miui/home/launcher/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;
    }
.end annotation


# instance fields
.field private final mBigIconCache:Lcom/miui/home/launcher/graphics/BigDrawableCache;

.field private final mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Lcom/miui/home/launcher/graphics/DrawableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconProvider:Lcom/miui/home/launcher/IconProvider;

.field private final mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    .line 79
    new-instance v0, Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/DrawableCache;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    .line 80
    new-instance v0, Lcom/miui/home/launcher/graphics/BigDrawableCache;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/BigDrawableCache;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/BigDrawableCache;

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 85
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    .line 87
    invoke-static {p1}, Lcom/miui/home/launcher/IconProvider;->newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/IconCache;)Lcom/miui/home/library/compat/LauncherAppsCompat;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    return-object p0
.end method

.method private declared-synchronized addIconToMemCache(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 3

    monitor-enter p0

    .line 172
    :try_start_0
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 173
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 176
    iget-object v2, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/IconProvider;->getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/IconCache;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    .line 177
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private applyCacheEntry(Lcom/miui/home/launcher/graphics/DrawableInfo;Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyCacheEntry entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewDisappear"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 274
    iget-object p1, p2, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V

    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Lcom/miui/home/launcher/util/Provider;Landroid/os/UserHandle;Z)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/miui/home/launcher/util/Provider<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            "Z)",
            "Lcom/miui/home/launcher/graphics/DrawableInfo;"
        }
    .end annotation

    .line 297
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 298
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v0, p1, p3}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 299
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v1

    if-nez v1, :cond_3

    .line 301
    new-instance v1, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 302
    invoke-virtual {p2}, Lcom/miui/home/launcher/util/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    if-eqz p2, :cond_0

    .line 304
    iget-object p1, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/IconProvider;->getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    .line 305
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 309
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 313
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 316
    :cond_1
    iget-object p1, v1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    .line 319
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 322
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    :cond_3
    return-object v1
.end method

.method private createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 1

    if-eqz p1, :cond_3

    .line 490
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->isFancyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->getQuietDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 497
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    return-object p0

    .line 500
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p2}, Lcom/miui/home/launcher/common/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/graphics/DrawableInfo;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    return-object p0

    .line 504
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getBadgeDrawable(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/DrawableInfo;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    return-object p0

    .line 491
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    return-object p0
.end method

.method private getBigIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 11

    .line 234
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 235
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 238
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 239
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 242
    :cond_1
    iget v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    return-object v1

    .line 245
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    if-nez v7, :cond_3

    return-object v1

    .line 249
    :cond_3
    new-instance v2, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v2, v3, v7}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 250
    iget-object v3, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/BigDrawableCache;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/graphics/BigDrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v3

    if-nez v3, :cond_6

    .line 252
    new-instance v3, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v3}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 253
    iget-object v4, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget v8, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v9, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const-string v10, ""

    .line 253
    invoke-virtual/range {v4 .. v10}, Lcom/miui/home/launcher/IconProvider;->getBigIconDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;IILjava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 255
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    .line 258
    :cond_4
    new-instance v0, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set, getBigIcon for info: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", with icon: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "PreviewDisappear"

    invoke-static {v4, v1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 261
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/miui/home/launcher/graphics/DrawableInfo;->enableIconMask:I

    .line 262
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 263
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/BigDrawableCache;

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/graphics/BigDrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    goto :goto_1

    :cond_5
    :goto_0
    return-object v1

    :cond_6
    :goto_1
    return-object v3
.end method

.method private getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 6

    .line 344
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 345
    invoke-static {p1, p2}, Lcom/miui/home/launcher/IconCache;->getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 349
    new-instance v1, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 353
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/16 v4, 0x2000

    .line 355
    :goto_0
    iget-object v5, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 356
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_1

    .line 361
    iget-object v4, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    .line 362
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    goto :goto_1

    .line 358
    :cond_1
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p2, "ApplicationInfo is null"

    invoke-direct {p1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 370
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    :cond_2
    return-object v1
.end method

.method private getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Lcom/miui/home/launcher/util/Provider;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;",
            "Lcom/miui/home/launcher/util/Provider<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconCache;->getBigIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 getIcon entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreviewDisappear"

    invoke-static {v2, v1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v0, p2, v1, p3}, Lcom/miui/home/launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/miui/home/launcher/util/Provider;Landroid/os/UserHandle;Z)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v0

    .line 225
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "2 getIcon entry: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/IconCache;->applyCacheEntry(Lcom/miui/home/launcher/graphics/DrawableInfo;Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V

    return-void
.end method

.method private getInitialIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 466
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    .line 467
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private static getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/util/ComponentKey;
    .locals 3

    .line 335
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance p0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object p0
.end method

.method private getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 448
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    .line 449
    iget-object p1, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    return-object p1

    .line 452
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized getRawIcon(Ljava/lang/String;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 3

    monitor-enter p0

    .line 471
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.vroco.launcher"

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 473
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 476
    iget-object v2, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/IconProvider;->getRawIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 477
    iget-object p1, v0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 478
    iget-object p1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private makeDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/IconProvider;->getDefaultActivityIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/IconCache;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    return-object p0
.end method

.method private removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/util/ComponentKey;

    .line 107
    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/util/ComponentKey;

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/graphics/DrawableCache;->remove(Lcom/miui/home/launcher/util/ComponentKey;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 328
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherPreconditions;->assertWorkerThread()V

    .line 329
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 330
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->clear()V

    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/BigDrawableCache;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/BigDrawableCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public existBigIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)Z
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconCache;->getBigIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAppUserBadgedIcon(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v1

    .line 519
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 521
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 522
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 523
    invoke-virtual {v2, v3}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 528
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v1

    .line 529
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/high16 v2, 0x800000

    invoke-virtual {v1, p1, v2, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 531
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 535
    :cond_3
    sget-object p1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 536
    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 537
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-nez v0, :cond_4

    move-object v0, v1

    .line 541
    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 3

    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconCache;->makeDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/graphics/DrawableInfo;

    const-string v0, "PreviewDisappear"

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultIcon result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFolderBgGridFourIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "folder_bg_grid_four_reserved.png"

    .line 410
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/IconCache;->getInitialIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFolderBgGridFourLight()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "folder_bg_grid_four_light_reserved.png"

    .line 414
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/IconCache;->getInitialIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFolderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "icon_folder.png"

    .line 402
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/IconCache;->getInitialIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFolderIconLight()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "icon_folder_light.png"

    .line 406
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/IconCache;->getInitialIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getGridCellDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "grid_cell_activate.png"

    const v1, 0x7f080204

    .line 394
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getGridCellHoverDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "grid_cell_hover.png"

    const v1, 0x7f080203

    .line 398
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V
    .locals 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIcon info target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewDisappear"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIcon info user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIcon default icon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIcon info intent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;-><init>(Lcom/miui/home/launcher/IconCache;Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Lcom/miui/home/launcher/util/Provider;Z)V

    :goto_0
    return-void
.end method

.method getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 1

    .line 187
    invoke-static {p2}, Lcom/miui/home/launcher/util/Provider;->of(Ljava/lang/Object;)Lcom/miui/home/launcher/util/Provider;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Lcom/miui/home/launcher/util/Provider;Z)V

    return-void
.end method

.method public getInitialIconFolderIcon1X1()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 555
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconCache;->getFolderIconLight()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconCache;->getFolderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    .line 558
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const v0, 0x7f0802c7

    goto :goto_1

    :cond_1
    const v0, 0x7f0802c4

    :goto_1
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method getMamlDownloadLight()Landroid/graphics/Bitmap;
    .locals 2

    .line 443
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0802ce

    goto :goto_0

    :cond_0
    const v0, 0x7f0802cd

    :goto_0
    const-string v1, "maml_download_light.png"

    .line 442
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 444
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getPairIconBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 434
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconCache;->getPairIconBgLight()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconCache;->getPairIconBgDark()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getPairIconBgDark()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 430
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080674

    goto :goto_0

    :cond_0
    const v0, 0x7f080673

    :goto_0
    const-string v1, "pair_icon_bg_dark.xml"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getPairIconBgLight()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 426
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080676

    goto :goto_0

    :cond_0
    const v0, 0x7f080675

    :goto_0
    const-string v1, "pair_icon_bg_light.xml"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public isUseDefaultIconFolder1X1()Ljava/lang/Boolean;
    .locals 1

    .line 545
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/IconCache;->getFolderIconLight()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconCache;->getFolderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 546
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isUseDefaultIconFolderLarge()Ljava/lang/Boolean;
    .locals 1

    .line 550
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/IconCache;->getFolderBgGridFourLight()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconCache;->getFolderBgGridFourIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 551
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    new-instance v1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->remove(Lcom/miui/home/launcher/util/ComponentKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeBigIcons(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    monitor-enter p0

    .line 135
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/BigDrawableCache;

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/BigDrawableCache;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/util/ComponentKey;

    if-eqz v2, :cond_0

    .line 137
    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 143
    :cond_2
    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p3, :cond_0

    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 144
    invoke-virtual {p3, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/util/ComponentKey;

    .line 149
    iget-object p3, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/BigDrawableCache;

    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/graphics/BigDrawableCache;->remove(Lcom/miui/home/launcher/util/ComponentKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 151
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    monitor-enter p0

    .line 130
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateBigIcons(Landroid/content/ComponentName;Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/IconCache;->removeBigIcons(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    if-eqz p2, :cond_0

    .line 159
    new-instance v0, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    const-string v1, "PreviewDisappear"

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set, updateBigIcons for info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", with icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 162
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/graphics/DrawableInfo;->enableIconMask:I

    .line 163
    iget-object p2, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/BigDrawableCache;

    new-instance v1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p2, v1, v0}, Lcom/miui/home/launcher/graphics/BigDrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    .line 122
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/IconCache;->addIconToMemCache(Landroid/content/pm/LauncherActivityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 124
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
