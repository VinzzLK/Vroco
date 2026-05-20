.class public Lcom/miui/home/launcher/SearchBarDesktopLayout;
.super Landroid/widget/RelativeLayout;
.source "SearchBarDesktopLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;
    }
.end annotation


# static fields
.field private static final MAX_SLIDING_DISTANCE_ON_CLICK:F


# instance fields
.field private DURATION:I

.field private mEndX:F

.field private mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

.field private mIsThemesShow:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

.field private mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

.field private mStartX:F

.field private mUpdateStyleObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$W4T7XgoUGhVtP7pGN2Y4DtDmaoI(Lcom/miui/home/launcher/SearchBarDesktopLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->MAX_SLIDING_DISTANCE_ON_CLICK:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0052

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->DURATION:I

    const/4 p2, 0x0

    .line 59
    iput-boolean p2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    .line 63
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/SearchBarDesktopLayout;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private getIntentFromBrowserUri(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    const/4 p0, 0x0

    .line 318
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.android.browser.application_id"

    const-string v0, "com.vroco.launcher"

    .line 319
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 320
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher.SearchBar"

    const-string v1, "parseIntentUri error"

    .line 322
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method private getIntentFromUri(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchSupportSearchBarIcon(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 298
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntentFromUri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher.SearchBar"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 302
    :try_start_0
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "search_bar_target"

    .line 304
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 p0, 0x10200000

    .line 306
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "parseIntentUri error"

    .line 308
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object v1
.end method

.method private jumpTargetBrowser(Landroid/net/Uri;)V
    .locals 2

    .line 113
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getIntentFromBrowserUri(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onClick: search url is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.SearchBar"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.BROWSABLE"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 121
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private jumpTargetSearch(Ljava/lang/String;)V
    .locals 2

    .line 127
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getIntentFromUri(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onClick: search url is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.SearchBar"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "home_search_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->launchGlobalSearch(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private declared-synchronized registerObserver()V
    .locals 4

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 213
    :try_start_1
    new-instance v0, Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;-><init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_home_screen_search_bar_show_initiate"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_home_screen_search_bar_engine_chain_resource"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/launcher/utils/MiuiSettingsUtils;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "Launcher.SearchBar"

    const-string v1, "register switch icon observer"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Launcher.SearchBar"

    const-string v2, "register switch icon observer exception"

    .line 219
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unregisterObserver()V
    .locals 2

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    const-string v0, "Launcher.SearchBar"

    const-string/jumbo v1, "unregister switch icon observer"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public hideMenu()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    :cond_0
    return-void
.end method

.method public isShowingMenu()Z
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isThemesShow()I
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    return p0
.end method

.method public isXiaoaiShow()Z
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->isXiaoaiShow()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public launchGlobalSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f010040

    const v1, 0x7f01006f

    .line 141
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->launchGlobalSearch(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public launchGlobalSearch(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 145
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, p0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->openGlobalSearch(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    goto :goto_0

    .line 149
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qsb://query?ref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "search_bar_target"

    .line 152
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p1, "com.android.quicksearchbox"

    .line 154
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 155
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p3, p4}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;II)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    .line 157
    sput-boolean p0, Lcom/miui/home/launcher/overlay/feed/FeedUtils;->isGlobalSearchActivityTop:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Launcher.SearchBar"

    const-string p1, "Global search activity not found"

    .line 159
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 200
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 201
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->registerObserver()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 100
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData;->getClickTargetUri()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "mibrowser"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData;->isSupportBrowser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->jumpTargetBrowser(Landroid/net/Uri;)V

    .line 104
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    iget-boolean p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    invoke-static {p1, p0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarClick(IILjava/lang/String;)V

    return-void

    .line 108
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData;->getExpId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->jumpTargetSearch(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    iget-boolean p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    const-string v0, "qsb"

    invoke-static {p1, p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarClick(IILjava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 206
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 207
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->unregisterObserver()V

    return-void
.end method

.method public onDismiss()V
    .locals 3

    .line 184
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->DURATION:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 69
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0322

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    const v0, 0x7f0a0325

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarExtraLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 72
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const v2, 0x3e3851ec    # 0.18f

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v3, v3}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/SearchBarDesktopLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;)V

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v2, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;[Lmiuix/animation/base/AnimConfig;)V

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0, p0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshSearchBarExterior()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 166
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBarLongPress(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->showMenu()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mEndX:F

    .line 335
    iget v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mStartX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/miui/home/launcher/SearchBarDesktopLayout;->MAX_SLIDING_DISTANCE_ON_CLICK:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 336
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->cancelLongPress()V

    const/4 p0, 0x0

    return p0

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mStartX:F

    iput v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mEndX:F

    .line 343
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->onWallpaperColorChanged()V

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->onWallpaperColorChanged()V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshSearchBarExterior()V

    return-void
.end method

.method public openSearch(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->launchGlobalSearch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshExtraLayoutStyle()V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->refreshStyle()V

    :cond_0
    return-void
.end method

.method public refreshSearchBarExterior()V
    .locals 1

    .line 250
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshStyle()V

    return-void
.end method

.method public refreshStyle()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->refreshStyle()V

    .line 258
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshExtraLayoutStyle()V

    .line 259
    new-instance v0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;-><init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showMenu()V
    .locals 1

    .line 176
    invoke-static {p0, p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->getSettingsWindow(Landroid/view/View;Landroid/widget/PopupWindow$OnDismissListener;)Lcom/miui/home/launcher/SearchBarSettingsWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    .line 177
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->show()V

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->cancelTouchEvent(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    iget-boolean p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    invoke-static {v0, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarSettingShow(II)V

    return-void
.end method
